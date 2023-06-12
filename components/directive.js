var app = angular.module('myApp', ['ngRoute']);
//router
app.config(function($routeProvider) {
  $routeProvider
  .when("/", {
    templateUrl : "components/Main/indexmain.html"
  })
  //indexshop
  .when("/shop", {
    templateUrl : "components/Main/indexshop.html"
  })
  //productdetails
  .when("/productdetail", {
    templateUrl : "components/Main/productdetails.html"
  })
  //checkout
  .when("/checkout", {
    templateUrl : "components/Main/checkout.html"
  })
  //cart
  .when("/cart", {
    templateUrl : "components/Main/Cart.html",
  })
  //login
  .when("/login", {
    templateUrl : "components/Main/login.html",
  })
  //blog
  .when("/blog", {
    templateUrl : "components/Main/blog.html",
  })
  //blogsingle
  .when("/blogsingle", {
    templateUrl : "components/Main/blog_single.html",
  })
  //error
  .when("/error", {
    templateUrl : "components/Main/error.html",
  })
});


// directive
app.directive('indexheader', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/indexheader.html',
    controller: () => {
      console.log('load indexheader');
    },
  };
});
app.directive('indexfooter', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/indexfooter.html',
    controller: () => {
      console.log('load indexfooter');
    },
  };
});
app.directive('container', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Header/container.html',
    controller: () => {
      console.log('load container');
    },
  };
});
app.directive('container1', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Header/container1.html',
    controller: () => {
      console.log('load container1');
    },
  };
});
app.directive('footertop', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Footer/footer_top.html',
    controller: () => {
      console.log('load footertop');
    },
  };
});
app.directive('footerwiget', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Footer/footer_wiget.html',
    controller: () => {
      console.log('load footerwiget');
    },
  };
});
app.directive('footerbottom', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Footer/footer_bottom.html',
    controller: () => {
      console.log('load footerbottom');
    },
  };
});
app.directive('slide', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/index/slide.html',
    controller: () => {
      console.log('load slide');
    },
  };
});
app.directive('category', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/index/category.html',
    controller: () => {
      console.log('load category');
    },
  };
});
app.directive('brands', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/index/brands.html',
    controller: () => {
      console.log('load brands');
    },
  };
});
app.directive('price', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/index/price.html',
    controller: () => {
      console.log('load price');
    },
  };
});
app.directive('features', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/index/features.html',
    controller: () => {
      console.log('load features');
    },
  };
});
app.directive('categorytab', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/index/category_tab.html',
    controller: () => {
      console.log('load categorytab');
    },
  };
});
app.directive('redcommended', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/index/redcommended.html',
    controller: () => {
      console.log('load redcommended');
    },
  };
});
app.directive('advertisement', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/shop/advertisement.html',
    controller: () => {
      console.log('load advertisement');
    },
  };
});
app.directive('pagination', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/shop/pagination.html',
    controller: () => {
      console.log('load pagination');
    },
  };
});
app.directive('product', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/productdetails/product.html',
    controller: () => {
      console.log('load product');
    },
  };
});
app.directive('producttab', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/productdetails/category_tab.html',
    controller: () => {
      console.log('load producttab');
    },
  };
});
app.directive('breadcrumb', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/checkout/breadcrumb.html',
    controller: () => {
      console.log('load breadcrumb');
    },
  };
});
app.directive('checkoutregister', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/checkout/checkout_register.html',
    controller: () => {
      console.log('load checkoutregister');
    },
  };
});
app.directive('information', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/checkout/information.html',
    controller: () => {
      console.log('load information');
    },
  };
});
app.directive('payment', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/checkout/payment.html',
    controller: () => {
      console.log('load payment');
    },
  };
});
app.directive('cart', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/Cart/table.html',
    controller: () => {
      console.log('load cart');
    },
  };
});
app.directive('singleblog', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/blog/single_blog.html',
    controller: () => {
      console.log('load singleblog');
    },
  };
});
app.directive('singleblogpost', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/singleblog/single_blog_post.html',
    controller: () => {
      console.log('load singleblogpost');
    },
  };
});
app.directive('rating', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/singleblog/rating.html',
    controller: () => {
      console.log('load rating');
    },
  };
});
app.directive('media', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/singleblog/media.html',
    controller: () => {
      console.log('load media');
    },
  };
});
app.directive('replay', () => {
  return {
    restrict: 'E',
    templateUrl: 'components/Main/singleblog/replay.html',
    controller: () => {
      console.log('load replay');
    },
  };
});