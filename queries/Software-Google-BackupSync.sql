SELECT DISTINCT 
  dbo.v_R_System.Name0 AS ComputerName, 
  dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED.ResourceID, 
  dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED.ProductName0 AS ProductName, 
  dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED.ARPDisplayName0 AS DisplayName, 
  dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED.ProductVersion0 AS Version, 
  dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED.Publisher0 AS Publisher, 
  dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED.ProductCode0 AS ProductCode
FROM 
  dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED INNER JOIN
  dbo.v_R_System ON dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED.ResourceID = dbo.v_R_System.ResourceID
WHERE 
  (dbo.v_GS_INSTALLED_SOFTWARE_CATEGORIZED.ProductName0 = 'Backup and Sync from Google')
ORDER BY
  ComputerName
