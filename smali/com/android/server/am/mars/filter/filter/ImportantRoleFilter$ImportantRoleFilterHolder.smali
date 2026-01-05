.class public abstract Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mSystemGalleryHolderList:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;->mContext:Landroid/content/Context;

    sput-object v0, Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter$ImportantRoleFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/ImportantRoleFilter;

    return-void
.end method
