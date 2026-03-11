import '../../../../core/_core_exports.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppTranslator.discoverPageTitle,
        actions: [
          IconButton(
            icon: const Icon(AppIcons.shoppingBag, color: AppColors.main),
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPaddings.horizontalPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppPaddings.mediumPaddingHeight,
              Text(
                AppTranslator.findPerfectDevice,
                style: AppTextStyles.body2Regular.copyWith(
                  color: AppColors.greySeventh,
                ),
              ),
              AppPaddings.mediumPaddingHeight,
              Container(
                decoration: BoxDecoration(
                  color: AppColors.greyThird,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: AppTranslator.searchProducts,
                    hintStyle: AppTextStyles.body2Regular.copyWith(
                      color: AppColors.greySeventh,
                    ),
                    prefixIcon: const Icon(
                      AppIcons.search,
                      color: AppColors.greySeventh,
                    ),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              AppPaddings.largePaddingHeight,
              Material(
                color: AppColors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          AppTranslator.comingSoon,
                          style: AppTextStyles.body2Medium.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                        backgroundColor: AppColors.black,
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    );
                  },
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        AppTranslator.giftStore,
                        style: AppTextStyles.headline2Semibold.copyWith(
                          color: AppColors.main,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              AppPaddings.largePaddingHeight,
              FutureBuilder<List<ProductModel>>(
                future: ApiService.getProducts(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Padding(
                      padding: AppPaddings.largePadding,
                      child: Center(
                        child: CircularProgressIndicator(color: AppColors.main),
                      ),
                    );
                  }
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        '${AppTranslator.errorMessage}: ${snapshot.error}',
                        style: AppTextStyles.body1Medium.copyWith(
                          color: AppColors.supportRed,
                        ),
                      ),
                    );
                  }
                  if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    final products = snapshot.data!;

                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.75,
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                          ),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];

                        return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              '/detail',
                              arguments: product,
                            );
                          },
                          child: ProductCardWidget(product: product),
                        );
                      },
                    );
                  }
                  return Center(
                    child: Text(
                      AppTranslator.productsNotFound,
                      style: AppTextStyles.body1Medium,
                    ),
                  );
                },
              ),
              AppPaddings.largePaddingHeight,
            ],
          ),
        ),
      ),
    );
  }
}
