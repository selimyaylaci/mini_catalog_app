import '../../../../core/_core_exports.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductModel;

    return Scaffold(
      appBar: CustomAppBar(
        title: AppTranslator.back,
        leading: const AppBackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.defaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Hero(
                  tag: product.id,
                  child: Image.network(
                    product.imageUrl,
                    height: 250,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              AppPaddings.largePaddingHeight,
              Text(
                product.title,
                style: AppTextStyles.headline1Bold.copyWith(
                  color: AppColors.main,
                ),
              ),
              AppPaddings.mediumPaddingHeight,
              Text(
                AppTranslator.description,
                style: AppTextStyles.headline3Semibold.copyWith(
                  color: AppColors.main,
                ),
              ),
              AppPaddings.smallPaddingHeight,
              Text(
                product.description,
                style: AppTextStyles.body2Regular.copyWith(
                  color: AppColors.greySeventh,
                  height: 1.5,
                ),
              ),
              AppPaddings.largePaddingHeight,
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {
                    CartManager().addItem(product);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          '${product.title} ${AppTranslator.addedToCart}',
                          style: AppTextStyles.body2Medium.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        backgroundColor: AppColors.black,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  },
                  child: Text(
                    '${AppTranslator.addToCart} - \$${product.price}',
                    style: AppTextStyles.body1Semibold.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
