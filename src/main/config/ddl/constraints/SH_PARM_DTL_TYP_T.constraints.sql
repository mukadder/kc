ALTER TABLE SH_PARM_DTL_TYP_T ADD CONSTRAINT SH_PARM_DTL_TYP_TR1
      FOREIGN KEY ( SH_PARM_NMSPC_CD )
      REFERENCES SH_PARM_NMSPC_T ( SH_PARM_NMSPC_CD );