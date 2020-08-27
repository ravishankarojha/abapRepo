class ZCL_ZCN_VDM_CUSTOMER_C_MPC definition
  public
  inheriting from /IWBEP/CL_MGW_PUSH_ABS_MODEL
  create public .

public section.

  interfaces IF_SADL_GW_MODEL_EXPOSURE_DATA .

  types:
   TS_I_DRAFTADMINISTRATIVEDATATY type SDRAFT_ADMIN_CDS .
  types:
   TT_I_DRAFTADMINISTRATIVEDATATY type standard table of TS_I_DRAFTADMINISTRATIVEDATATY .
  types:
    begin of TS_ZCN_C_CUSTOMERCONTACTTYPE.
      include type ZCNCCUSCONT.
  types:
      DRAFTUUID type ZCN_CUSCON-DRAFTUUID,
      DRAFTENTITYCREATIONDATETIME type ZCN_CUSCON-DRAFTENTITYCREATIONDATETIME,
      DRAFTENTITYLASTCHANGEDATETIME type ZCN_CUSCON-DRAFTENTITYLASTCHANGEDATETIME,
      HASACTIVEENTITY type SDRAFT_HAS_ACTIVE,
      HASDRAFTENTITY type SDRAFT_HAS_DRAFT,
      ISACTIVEENTITY type SDRAFT_IS_ACTIVE,
      A_ACTIVATION type SADL_GW_DYNAMIC_ACTN_PROPERTY,
      A_EDIT type SADL_GW_DYNAMIC_ACTN_PROPERTY,
      A_PREPARATION type SADL_GW_DYNAMIC_ACTN_PROPERTY,
      A_VALIDATION type SADL_GW_DYNAMIC_ACTN_PROPERTY,
    end of TS_ZCN_C_CUSTOMERCONTACTTYPE .
  types:
   TT_ZCN_C_CUSTOMERCONTACTTYPE type standard table of TS_ZCN_C_CUSTOMERCONTACTTYPE .

  constants GC_I_DRAFTADMINISTRATIVEDATATY type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'I_DraftAdministrativeDataType' ##NO_TEXT.
  constants GC_ZCN_C_CUSTOMERCONTACTTYPE type /IWBEP/IF_MGW_MED_ODATA_TYPES=>TY_E_MED_ENTITY_NAME value 'ZCN_C_CUSTOMERCONTACTType' ##NO_TEXT.

  methods DEFINE
    redefinition .
  methods GET_LAST_MODIFIED
    redefinition .