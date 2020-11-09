ALTER TABLE `cd-customer-platform`.`contact_type`   
  CHANGE `code` `code` VARCHAR(50) NOT NULL,
  CHANGE `description` `description` INT(50) NOT NULL;

  
insert into `contact_type` (`id`, `code`, `description`, `created_at`, `updated_at`, `deleted_at`) values('1','employee','employee',NULL,NULL,NULL);
insert into `contact_type` (`id`, `code`, `description`, `created_at`, `updated_at`, `deleted_at`) values('2','user','user',NULL,NULL,NULL);
insert into `contact_type` (`id`, `code`, `description`, `created_at`, `updated_at`, `deleted_at`) values('3','company_contact','company_contact',NULL,NULL,NULL);
insert into `contact_type` (`id`, `code`, `description`, `created_at`, `updated_at`, `deleted_at`) values('4','company_owner','company_owner',NULL,NULL,NULL);
