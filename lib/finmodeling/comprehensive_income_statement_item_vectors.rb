module FinModeling
  class ComprehensiveIncomeStatementItem < String
    TRAINING_VECTORS = [ 

      # Fake: made up to show an example of FIAT. Need to pull in more real examples..
      {:klass=>:or, :item_string=>"Advertising Revenue"},
      {:klass=>:cogs, :item_string=>"Advertising Revenue Cost"},
      {:klass=>:oe, :item_string=>"General And Administrative Expense"},
      {:klass=>:oe, :item_string=>"Other General And Administrative Expense"},
      {:klass=>:oe, :item_string=>"Depreciation Amortization And Accretion Net"},
      {:klass=>:fibt, :item_string=>"Gain Loss On Disposition Of Assets"},
      {:klass=>:fibt, :item_string=>"Gains Losses On Extinguishment Of Debt"},
      {:klass=>:fibt, :item_string=>"Investment Income Interest"},
      {:klass=>:fibt, :item_string=>"Interest Expense"},
      {:klass=>:tax, :item_string=>"Income Tax Expense Benefit"},
      {:klass=>:fiat, :item_string=>"Dividends Preferred Stock"},
      {:klass=>:ooci_nci, :item_string=>"Comprehensive Income Net Of Tax Attributable To Noncontrolling Interest"},

      # ALTR
      {:klass=>:or, :item_string=>"Sales Revenue Net"},
      {:klass=>:cogs, :item_string=>"Cost Of Goods And Services Sold"},
      {:klass=>:oe, :item_string=>"Research And Development Expense"},
      {:klass=>:oe, :item_string=>"Selling General And Administrative Expense"},
      {:klass=>:oe, :item_string=>"Loss Gain On Deferred Compensation Plan Securities"},
      {:klass=>:fibt, :item_string=>"Investment Income Interest"},
      {:klass=>:fibt, :item_string=>"Foreign Currency Cash Flow Hedge Gain Loss Reclassified To Earnings Net"},
      {:klass=>:fibt, :item_string=>"Interest Expense"},
      {:klass=>:oibt, :item_string=>"Deferred Compensation Arrangement With Individual Compensation Expense"},
      {:klass=>:tax, :item_string=>"Income Tax Expense Benefit"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Unrealized Gain Loss On Derivatives Arising During Period Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment On Derivatives Included In Net Income Net Of Tax"},

      # This comes from ALTR. It was getting misclassified as foci, so I'm retraining it a bunch of times.
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income (Loss), Net of Tax"},

      # BMC
      {:klass=>:or, :item_string=>"Licenses Revenue"},
      {:klass=>:or, :item_string=>"Maintenance Revenue"},
      {:klass=>:or, :item_string=>"Technology Services Revenue"},
      {:klass=>:cogs, :item_string=>"License Costs"},
      {:klass=>:cogs, :item_string=>"Maintenance Costs"},
      {:klass=>:cogs, :item_string=>"Technology Services Costs"},
      {:klass=>:oe, :item_string=>"Selling And Marketing Expense"},
      {:klass=>:oe, :item_string=>"Research And Development Expense Software Excluding Acquired In Process Cost"},
      {:klass=>:oe, :item_string=>"General And Administrative Expense"},
      {:klass=>:oe, :item_string=>"Amortization Of Intangible Assets"},
      {:klass=>:fibt, :item_string=>"Other Interest And Dividend Income"},
      {:klass=>:fibt, :item_string=>"Interest Expense"},
      {:klass=>:fibt, :item_string=>"Gain Loss On Investments"},
      {:klass=>:tax, :item_string=>"Income Tax Expense Benefit"},

      # CHRW
      {:klass=>:or, :item_string=>"Transportation Services Revenue"},
      {:klass=>:or, :item_string=>"Sales Revenue Goods Net"},
      {:klass=>:or, :item_string=>"Sales Revenue Services Net"},
      {:klass=>:cogs, :item_string=>"Cost Of Purchased Transportation And Related Services"},
      {:klass=>:cogs, :item_string=>"Cost Of Goods Sold"},
      {:klass=>:oe, :item_string=>"Labor And Related Expense"},
      {:klass=>:oe, :item_string=>"Other Selling General And Administrative Expense"},
      {:klass=>:fibt, :item_string=>"Total Nonoperating Interest And Other Income Expense"},
      {:klass=>:tax, :item_string=>"Income Tax Expense Benefit"},

      # SIRI
      {:klass=>:or, :item_string=>"Other Sales Revenue Net"},
      {:klass=>:or, :item_string=>"Equipment Revenue"},
      {:klass=>:or, :item_string=>"Advertising Revenue"},
      {:klass=>:or, :item_string=>"Subscription Revenue"},
      {:klass=>:cogs, :item_string=>"Revenue Share And Royalties"},
      {:klass=>:cogs, :item_string=>"Programming And Content"},
      {:klass=>:cogs, :item_string=>"Customer Service And Billing"},
      {:klass=>:cogs, :item_string=>"Satellite And Transmission"},
      {:klass=>:cogs, :item_string=>"Cost Of Goods Sold"},
      {:klass=>:oe, :item_string=>"Subscriber Acquisition Costs"},
      {:klass=>:oe, :item_string=>"Selling And Marketing Expense"},
      {:klass=>:oe, :item_string=>"Technology Services Costs"},
      {:klass=>:oe, :item_string=>"General And Administrative Expense"},
      {:klass=>:oe, :item_string=>"Depreciation And Amortization"},
      {:klass=>:fibt, :item_string=>"Interest And Investment Income Loss"},
      {:klass=>:fibt, :item_string=>"Interest Expense"},
      {:klass=>:fibt, :item_string=>"Gains Losses On Extinguishment Of Debt"},
      {:klass=>:fibt, :item_string=>"Other Nonoperating Income Expense"},
      {:klass=>:tax, :item_string=>"Income Tax Expense Benefit"},
      {:klass=>:unkoci, :item_string=>"Realized Loss On Investment Foreign Currency Translation Adjustment"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Foreign Currency Transaction And Translation Adjustment Net Of Tax"},

      # VRSN
      {:klass=>:or, :item_string=>"Revenues"},
      {:klass=>:cogs, :item_string=>"Cost Of Revenue"},
      {:klass=>:oe, :item_string=>"Selling And Marketing Expense"},
      {:klass=>:oe, :item_string=>"Research And Development Expense"},
      {:klass=>:oe, :item_string=>"General And Administrative Expense"},
      {:klass=>:oibt, :item_string=>"Restructuring Settlement And Impairment Provisions"},
      {:klass=>:fibt, :item_string=>"Interest Expense"},
      {:klass=>:fibt, :item_string=>"Nonoperating Gains Losses"},
      {:klass=>:tax, :item_string=>"Income Tax Expense Benefit"},
      {:klass=>:ooiat, :item_string=>"Income Loss From Discontinued Operations Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Foreign Currency Transaction And Translation Adjustment Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Unrealized Holding Gain Loss On Securities Arising During Period Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment For Sale Of Securities Included In Net Income Net Of Tax"},

      # ATVI
      {:klass=>:ni, :item_string=>"Net Income Loss"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Foreign Currency Transaction And Translation Adjustment Net Of Tax Period Increase Decrease"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Unrealized Holding Gain Loss On Securities Arising During Period Net Of Tax"},

      # CTXS
      {:klass=>:ni, :item_string=>"Profit Loss"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Foreign Currency Transaction And Translation Adjustment Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Unrealized Holding Gain Loss On Securities Arising During Period Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment For Sale Of Securities Included In Net Income Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Unrealized Gain Loss On Derivatives Arising During Period Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment On Derivatives Included In Net Income Net Of Tax"},
      {:klass=>:ooci_nci, :item_string=>"Comprehensive Income Net Of Tax Attributable To Noncontrolling Interest"},

      # EXPE
      {:klass=>:ni, :item_string=>"Profit Loss"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Foreign Currency Transaction And Translation Gain Loss Arising During Period Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Loss Available For Sale Securities Adjustment Net Of Tax"},
      {:klass=>:ooci_nci, :item_string=>"Comprehensive Income Net Of Tax Attributable To Noncontrolling Interest"},

      # GILD
      {:klass=>:ni, :item_string=>"Profit Loss"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Unrealized Holding Gain Loss On Securities Arising During Period Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment For Sale Of Securities Included In Net Income Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Unrealized Gain Loss On Derivatives Arising During Period Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment On Derivatives Included In Net Income Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Foreign Currency Transaction And Translation Adjustment Net Of Tax"},
      {:klass=>:ooci_nci, :item_string=>"Net Income Loss Attributable To Noncontrolling Interest"},

      # GMCR
      {:klass=>:ni, :item_string=>"Profit Loss"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Unrealized Gain Loss On Derivatives Arising During Period Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment On Derivatives Included In Net Income Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Foreign Currency Transaction And Translation Adjustment Net Of Tax"},

      # INTC
      {:klass=>:ni, :item_string=>"Net Income Loss"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Loss Available For Sale Securities Adjustment Including Other Than Temporary Impairments Net Of Tax"},
      {:klass=>:ooci, :item_string=>"Other Comprehensive Income Change In Deferred Tax Asset Valuation Allowance Net Of Tax Before Reclassification Adjustments"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Derivatives Qualifying As Hedges Net Of Tax"},
      {:klass=>:ooci, :item_string=>"Other Comprehensive Income Change In Prior Service Cost Net Of Tax"},
      {:klass=>:ooci, :item_string=>"Other Comprehensive Income Change In Actuarial Gain Loss Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Foreign Currency Transaction And Translation Gain Loss Arising During Period Net Of Tax"},

      # ISRG
      {:klass=>:ni, :item_string=>"Net Income Loss"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Foreign Currency Transaction And Translation Adjustment Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Loss Available For Sale Securities Adjustment Before Reclassification Adjustments Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment For Sale Of Securities Included In Net Income Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Unrealized Gain Loss On Derivatives Arising During Period Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Reclassification Adjustment On Derivatives Included In Net Income Net Of Tax"},

      # LIFE (10-k)
      {:klass=>:ni, :item_string=>"Profit Loss"},
      {:klass=>:ooci, :item_string=>"Other Comprehensive Income Defined Benefit Plans Net Unamortized Gain Loss Arising During Period Net Of Tax"},
      {:klass=>:ooci, :item_string=>"Other Comprehensive Income Defined Benefit Plan Net Prior Service Costs Credit Arising During Period Net Of Tax"},
      {:klass=>:ooci, :item_string=>"Other Comprehensive Income Loss Finalization Of Pension And Non Pension Postretirement Plan Valuation Net Of Tax"},
      {:klass=>:ooci, :item_string=>"Other Comprehensive Income Loss Amortization Pension And Other Postretirement Benefit Plans Net Prior Service Cost Recognized In Net Periodic Pension Cost Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Cash Flow Hedge Gain Loss Reclassified To Earnings Net"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Loss Foreign Currency Transaction And Translation Adjustment Net Of Tax"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Foreign Currency Transaction And Translation Adjustment Net Of Tax Portion Attributable To Noncontrolling Interest"},
      {:klass=>:ooci_nci, :item_string=>"Net Income Loss Attributable To Noncontrolling Interest"},

      # XRAY
      {:klass=>:ni, :item_string=>"Profit Loss"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Foreign Currency Transaction And Translation Adjustment Net Of Tax Period Increase Decrease"},
      {:klass=>:unkoci, :item_string=>"Other Comprehensive Income Unrealized Gain Loss On Derivatives Arising During Period Net Of Tax"},
      {:klass=>:foci, :item_string=>"Other Comprehensive Income Available For Sale Securities Adjustment Net Of Tax Period Increase Decrease"},
      {:klass=>:ooci, :item_string=>"Other Comprehensive Income Minimum Pension Liability Net Adjustment Net Of Tax"},
      {:klass=>:ooci_nci, :item_string=>"Comprehensive Income Net Of Tax Attributable To Noncontrolling Interest"} ]
  end
end
