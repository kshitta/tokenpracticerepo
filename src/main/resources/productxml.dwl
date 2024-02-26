%dw 2.0
output application/json
import getOfferPrice as gop,vGetOfferPrice as vgop from mymodules::CustomFunctions

var conversionRate=74



---
product @(pid:payload.productId):{
productName:payload.name,
originalPrice: payload.originalPrice,
offer:{
discountPercentage: payload.offer.discountPercentage default 0,
offerPrice: gop(payload.originalPrice,payload.offer.discountPercentage),


offerValidUntil:payload.offer.offerValidUntil
},
image1 :payload.images[0]
}