<?php

    'url' => 'http://search.creditandcollection.nl/api',
    'username' => 'directdevice',
    'password' => 'OTZwOJ77NsdRDWS'

class KvkSeachApi
{

    /** Request methods */
    const METHOD_GET = 'GET';
    const METHOD_POST = 'POST';
    const METHOD_PUT = 'PUT';
    const METHOD_DELETE = 'DELETE';

    /**
     * API base url
     * @var string
     */
    protected $url = null;

    /**
     * HTTP Auth username
     * @var string
     */
    protected $username = null;

    /**
     * HTTP Auth password
     * @var string
     */
    protected $password = null;

    /**
     * Constructor
     *
     * @param string $username
     * @param string $password
     */
    public function __construct($username, $password, $url = null)
    {
        $this->username = $username;
        $this->password = $password;

        if (!empty($url)) {
            $this->url = $url;
        }

        if (!function_exists('curl_init')){
            throw new Exception('The cURL extension is not installed!');
        }
    }


    /**
     * Retrieve API documentation.
     *
     * @return mixed
     */
    public function getDocs()
    {
        $url = $this->buildUrl('/company/docs');
        return $this->doRequest($url);
    }

    /**
     * Returns a company if found.
     *
     * @param string $country
     * @param string $uniqueKey
     * @param string $supplier
     * @return false|array
     */
    public function getCompany($country, $uniqueKey, $supplier)
    {
        $criteria = array(
            'with' => $supplier,
        );

        $url = $this->buildUrl(sprintf('/company/%s/%s?%s',
            $country,
            $uniqueKey,
            http_build_query($criteria)
        ));

        return $this->doRequest($url);
    }

    /**
     * Returns a list of companies matched by the criteria.
     * The country param is required.
     *
     * Params:
     *   + term
     *   + reg_number
     *   + vat_number
     *   + name
     *   + city
     *   + zipcode
     *   + address_street
     *   + address_number
     *   + country
     *   + page
     *
     * @param array $params
     * @param string $supplier
     * @return false|array
     */
    public function getCompanies(array $params, $supplier)
    {
        $criteria = array(
            'term'           => null,
            'reg_number'     => null,
            'vat_number'     => null,
            'name'           => null,
            'city'           => null,
            'zipcode'        => null,
            'address_street' => null,
            'address_number' => null,
            'with'           => null,
            'page'           => 1);

        $params['with'] = $supplier;
        foreach ($params as $key => $value) {
            if (array_key_exists($key, $criteria)) {
                $criteria[$key] = urlencode($value);
            }
        }

        $url = $this->buildUrl(sprintf('/company/%s?%s',
            $params['country'],
            http_build_query($criteria)
        ));

        return $this->doRequest($url);
    }



    /**
     * Executes a curl request.
     *
     * @param string $url
     * @param string $method
     * @param array $data
     * @param bool $decode
     * @return mixed
     */
    protected function doRequest(
        $url,
        $method = self::METHOD_GET,
        array $data = null,
        $raw = false)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_USERPWD, sprintf('%s:%s', $this->username, $this->password));
        curl_setopt($ch, CURLOPT_HEADER, 1);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, strtoupper($method));

        if (is_array($data)) {
            $fields = array();
            foreach ($data as $key => $value) {
                $fields[] = sprintf('%s=%s', $key, $value);
            }

            curl_setopt($ch, CURLOPT_POSTFIELDS, implode('&', $fields));
        }

        if (($response = curl_exec($ch)) === false) {
            return false;
        }

        curl_close($ch);

        if (!$raw) {
            list($headers, $body) = explode("\r\n\r\n", $response, 2);
            return $this->decodeResponse($headers, $body);
        }

        return $response;
    }

    /**
     * Builds an url with the API url.
     *
     * @param string $addition
     * @return string
     */
    protected function buildUrl($addition = null)
    {
        if (empty($this->url)) {
            throw new Exception('No url defined');
        }

        return sprintf('%s%s', $this->url, $addition);
    }

    /**
     * Tries to grap the "Content-Type" header from the response.
     * Returns null on failure.
     *
     * @param string $headers
     * @return mixed (string|null)
     */
    protected function grapContentType($headers)
    {
        $pattern = '~Content-Type:\s*([a-zA-Z0-9-]+/?[a-zA-Z0-9-]*)ism~';
        if (preg_match($pattern, $headers, $match)) {
            return strtolower($match[1]);
        }

        return null;
    }

    /**
     * Decodes an encoded response.
     *
     * @param string $headers
     * @param string $body
     * @return mixed
     */
    protected function decodeResponse($headers, $body)
    {
        $contentType = $this->grapContentType($headers);

        switch ($contentType) {
            case 'application/json';
            default:
                $decoded = json_decode($body);
                break;
        }

        return $decoded;
    }
}
