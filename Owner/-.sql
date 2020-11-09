The owner selectbox displays all contacts of type_id = employee for a given ditribution_id

To get all employees in API:

- Check what distribution_id the user requesting the data belongs to
- Same logic applies as to company check:
	-	If user belongs to "partner" distribution_id, only show contact records with distribution_id equal to user distribution_id
	-	If user belongs to "root" partner, by default do the same as for partner, but allow header parameter to display all or for specific distribution_id (in case we need that)
- Get all contacts of type_id employee
	
	