SELECT cdlng AS "linge"
FROM BLANCHE.linge
WHERE cdlng IN(SELECT cdlng
			   FROM BLANCHE.change
			   WHERE cdctr IN(SELECT cdctr
			   				  FROM BLANCHE.contrat
			   				  WHERE cdcli IN(SELECT cdcli
			   				  				 FROM BLANCHE.client
			   				  				 WHERE cdtpcli IN (SELECT cdtpcli
			   				  				 	FROM BLANCHE.type_client
			   				  				 	WHERE (UPPER(inttpcli)='CLINIQUE'
			   				  				 		   OR upper(inttpcli)="LABORATOIRE D'ANALYSE")
													   AND ))))