var app = angular.module('myApp', ['ngRoute']);
app.directive('iconsearch', () => {
  return {
    restrict: 'E',
    templateUrl: './component/header/search/icon.html',
    controller: () => {
      console.log('load iconsearch');
    },
  };
});
app.directive('formsearch', () => {
  return {
    restrict: 'E',
    templateUrl: './component/header/search/form.html',
    controller: () => {
      console.log('load formsearch');
    },
  };
});
app.directive('logohome', () => {
    return {
      restrict: 'E',
      templateUrl: './component/logo.html',
      controller: () => {
        console.log('load homelogo');
      },
    };
  });
app.directive('navlogo', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/logo.html',
      controller: () => {
        console.log('load logo');
      },
    };
  });
app.directive('navbar', () => {
  return {
    restrict: 'E',
    templateUrl: './component/header/nav.html',
    controller: () => {
      console.log('load navbar');
    },
  };
});
app.directive('navdiscount', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/discount.html',
      controller: () => {
        console.log('load discount');
      },
    };
  });
  app.directive('navcart', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/cart.html',
      controller: () => {
        console.log('load navcart');
      },
    };
  });
  app.directive('navsocial', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/social.html',
      controller: () => {
        console.log('load social');
      },
    };
  });
  app.directive('textletter', () => {
    return {
      restrict: 'E',
      templateUrl: './component/new-letter/text.html',
      controller: () => {
        console.log('load text');
      },
    };
  });
  app.directive('formletter', () => {
    return {
      restrict: 'E',
      templateUrl: './component/new-letter/form.html',
      controller: () => {
        console.log('load form');
      },
    };
  });
  app.directive('logofooter', () => {
    return {
      restrict: 'E',
      templateUrl: './component/footer/left/logo.html',
      controller: () => {
        console.log('load leftfooter');
      },
    };
  });
  app.directive('rightfooter', () => {
    return {
      restrict: 'E',
      templateUrl: './component/footer/right/nav_footer.html',
      controller: () => {
        console.log('load rightfooter ');
      },
    };
  });
  app.directive('category1', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category1.html',
      controller: () => {
        console.log('load category1');
      },
    };
  });
  app.directive('category2', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category2.html',
      controller: () => {
        console.log('load category2');
      },
    };
  });
  app.directive('category3', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category3.html',
      controller: () => {
        console.log('load category3');
      },
    };
  });
  app.directive('category4', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category4.html',
      controller: () => {
        console.log('load category4');
      },
    };
  });
  app.directive('category5', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category5.html',
      controller: () => {
        console.log('load category5');
      },
    };
  });
  app.directive('category6', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category6.html',
      controller: () => {
        console.log('load category6');
      },
    };
  });
  app.directive('category7', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category7.html',
      controller: () => {
        console.log('load category7');
      },
    };
  });
  app.directive('category8', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category8.html',
      controller: () => {
        console.log('load category8');
      },
    };
  });
  app.directive('category9', () => {
    return {
      restrict: 'E',
      templateUrl: './component/header/category/category9.html',
      controller: () => {
        console.log('load category9');
      },
    };
  });
  app.directive('categorymenu', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/categories.html',
      controller: () => {
        console.log('load categorymenu');
      },
    };
  });
  app.directive('singleform', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/singleform.html',
      controller: () => {
        console.log('load singleform');
      },
    };
  });
  app.directive('color', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/color.html',
      controller: () => {
        console.log('load color');
      },
    };
  });
  app.directive('price', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/price.html',
      controller: () => {
        console.log('load Price');
      },
    };
  });
  app.directive('total', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/total_product.html',
      controller: () => {
        console.log('load total');
      },
    };
  });
  app.directive('sorting', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/Sorting.html',
      controller: () => {
        console.log('load Sorting');
      },
    };
  });
  app.directive('product1', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/Single_Product/Product1.html',
      controller: () => {
        console.log('load product1');
      },
    };
  });
  app.directive('product2', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/Single_Product/Product2.html',
      controller: () => {
        console.log('load product2');
      },
    };
  });
  app.directive('product3', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/Single_Product/Product3.html',
      controller: () => {
        console.log('load product3');
      },
    };
  });
  app.directive('product4', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/Single_Product/Product4.html',
      controller: () => {
        console.log('load product4');
      },
    };
  });
  app.directive('product5', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/Single_Product/Product5.html',
      controller: () => {
        console.log('load product5');
      },
    };
  });
  app.directive('product6', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/Single_Product/Product6.html',
      controller: () => {
        console.log('load product6');
      },
    };
  });
  app.directive('trang', () => {
    return {
      restrict: 'E',
      templateUrl: './component/shop/trang.html',
      controller: () => {
        console.log('load trang');
      },
    };
  });
  app.directive('breadcrumb', () => {
    return {
      restrict: 'E',
      templateUrl: './component/product-details/breadcrumb.html',
      controller: () => {
        console.log('load breadcrumb');
      },
    };
  });
  app.directive('singleproduct', () => {
    return {
      restrict: 'E',
      templateUrl: './component/product-details/single-product.html',
      controller: () => {
        console.log('load singleproduct');
      },
    };
  });
  app.directive('productdata', () => {
    return {
      restrict: 'E',
      templateUrl: './component/product-details/product-data.html',
      controller: () => {
        console.log('load product-data');
      },
    };
  });
  app.directive('addtocart', () => {
    return {
      restrict: 'E',
      templateUrl: './component/product-details/add-to-cart.html',
      controller: () => {
        console.log('load addtocart');
      },
    };
  });
  app.directive('tablecart', () => {
    return {
      restrict: 'E',
      templateUrl: './component/product-details/table.html',
      controller: () => {
        console.log('load table');
      },
    };
  });
  app.directive('totalcart', () => {
    return {
      restrict: 'E',
      templateUrl: './component/product-details/cart-total.html',
      controller: () => {
        console.log('load totalcart');
      },
    };
  });
  app.directive('formcheckout', () => {
    return {
      restrict: 'E',
      templateUrl: './component/checkout/form_checkout.html',
      controller: () => {
        console.log('load formcheckout');
      },
    };
  });
  app.directive('cash', () => {
    return {
      restrict: 'E',
      templateUrl: './component/checkout/cash.html',
      controller: () => {
        console.log('load cash');
      },
    };
  });
  app.directive('country', () => {
    return {
      restrict: 'E',
      templateUrl: './component/checkout/select_country.html',
      controller: () => {
        console.log('load cash');
      },
    };
  });