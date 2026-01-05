.class public abstract Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mRegisteredQuickTileContentObserver:Z

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mQuickTileContentObserver:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$1;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;->mActiveQuickTilePackages:Ljava/util/ArrayList;

    sput-object v0, Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter$QuickTilePackageFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/QuickTilePackageFilter;

    return-void
.end method
