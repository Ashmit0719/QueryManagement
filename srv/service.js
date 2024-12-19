const cds = require('@sap/cds');

module.exports = async (srv) => 
{        

  const externalService = await cds.connect.to('GMS_CONFIG'); 
    srv.on('READ', 'pathAndFuelMapping', async (req) => {
        try {
            const result = await externalService.run(SELECT.from('pathAndFuelMapping'));
            return result; 
        } catch (err) {
            console.error('Error fetching data from external service:', err);
            req.error(500, 'Failed to fetch data from external service.');
        }
        
    });
    srv.on('READ', 'HeaderItem_Config', async (req) => {
      try {
          const result = await externalService.run(SELECT.from('HeaderItem_Config'));
          return result; 
      } catch (err) {
          console.error('Error fetching data from external service:', err);
          req.error(500, 'Failed to fetch data from external service.');
      }
      
  }); 
  srv.on('READ', 'DocumentNoProfileMapping', async (req) => {
    try {
        const result = await externalService.run(SELECT.from('DocumentNoProfileMapping'));
        return result; 
    } catch (err) {
        console.error('Error fetching data from external service:', err);
        req.error(500, 'Failed to fetch data from external service.');
    }
    
});
    

    // Using CDS API      
    const GMSBUSINESS_PARTNER_CUSTOMER_SRV = await cds.connect.to("GMSBUSINESS_PARTNER_CUSTOMER_SRV"); 
      srv.on('READ', 'A_BusinessPartner', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('READ', 'A_BuPaIndustry', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('READ', 'A_BusinessPartnerAddress', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('READ', 'A_BuPaAddressUsage', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('READ', 'A_Customer', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('READ', 'A_CustomerCompany', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('READ', 'A_CustomerSalesArea', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('READ', 'A_BusinessPartnerRole', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('CREATE', 'A_BusinessPartner', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('CREATE', 'A_BuPaIndustry', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('CREATE', 'A_BusinessPartnerAddress', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('CREATE', 'A_BuPaAddressUsage', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('CREATE', 'A_Customer', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('CREATE', 'A_CustomerCompany', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('CREATE', 'A_CustomerSalesArea', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query)); 
      srv.on('CREATE', 'A_BusinessPartnerRole', req => GMSBUSINESS_PARTNER_CUSTOMER_SRV.run(req.query));
}