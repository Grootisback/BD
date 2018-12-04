SELECT rsnCli AS "Client"
FROM BLANCHE.Client C,
	 BLANCHE.type_Client tc,
	 BLANCHE.contrat CTR
WHERE c.cdtpcli =tc.cdtpcli
	  AND UPPER(inttpcli)='ATELIER')
	  AND C.cdcli=CTR.cdcli
	  AND cdctr IS NULL)

SELECT rsnCli AS "Client"
FROM BLANCHE.Client
WHERE cdtpcli =(SELECT cdtpcli
				FROM blanche.type_Client
				WHERE UPPER(inttpcli)='ATELIER')
	  AND cdcli IN (SELECT cdcli
	  				FROM BLANCHE.contrat
	  				WHERE cdctr IS NULL)

SELECT rsnCli AS "Client"
FROM BLANCHE.Client c
WHERE EXISTS (SELECT NULL
				FROM blanche.type_Client tc
				WHERE c.cdtpcli=tc.cdtpcli
				AND UPPER(inttpcli)='ATELIER')
	  AND EXISTS (SELECT null
	  			  FROM BLANCHE.contrat ctr
	  			  WHERE c.cdcli=ctr.cdcli
	  			  AND cdctr IS NULL)