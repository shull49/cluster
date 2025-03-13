	SELECT * INTO [processed_vendors] FROM (
		SELECT
			'P'		AS [Address Type],
			[VendCode]		AS [VendorID],
			[VendName]		AS [Vendor Name],
			[PAddr1]		AS [Address1],
			[PAddr2]		AS [Address2],
			[PCity]			AS [City],
			[PState]		AS [State],
			[PZipCode]		AS [Zip],
			[PCountry]		AS [Country],
			[Phone]			AS [Phone],
			[Fax]			AS [Fax],
			[PPhone]		AS [Contact],
			[PContact]		AS [ContactPhone],
			[Website]
		  FROM [VendCode]

		UNION

		SELECT
			'S'		AS [Address Type],
			[VendCode]		AS [VendorID],
			[VendName]		AS [Vendor Name],
			[SAddr1]		AS [Address1],
			[SAddr2]		AS [Address2],
			[SCity]			AS [City],
			[SState]		AS [State],
			[SZipCode]		AS [Zip],
			[SCountry]		AS [Country],
			''				AS [Phone],
			''				AS [Fax],
			''				AS [Contact],
			''				AS [ContactPhone],
			[Website]
		  FROM [VendCode]
	  
	UNION	
		SELECT
			'R'				AS [Address Type],
			[VendCode]		AS [VendorID],
			[VendName]		AS [Vendor Name],
			[RAddr1]		AS [Address1],
			[RAddr2]		AS [Address2],
			[RCity]			AS [City],
			[RState]		AS [State],
			[RZipCode]		AS [Zip],
			[RCountry]		AS [Country],
			''				AS [Phone],
			[Fax]			AS [Fax],
			[ARPhone]		AS [Contact],
			[ARContact]		AS [ContactPhone],
			[Website]
		  FROM [VendCode]
	) q1	
	ORDER BY [VendorID]
