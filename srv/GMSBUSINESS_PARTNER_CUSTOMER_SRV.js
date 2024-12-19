const cds = require('@sap/cds');

module.exports = async (srv) => 
{        
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
}