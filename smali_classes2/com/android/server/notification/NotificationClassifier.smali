.class public final Lcom/android/server/notification/NotificationClassifier;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mClassifier:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

.field public mClassifierSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mInitialized:Z

.field public mOptionsMessage:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

.field public mOptionsNoti:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

.field public pkgList:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationClassifier;->mInitialized:Z

    iput-boolean v0, p0, Lcom/android/server/notification/NotificationClassifier;->mClassifierSupported:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mClassifier:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier;

    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mOptionsNoti:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    iput-object v0, p0, Lcom/android/server/notification/NotificationClassifier;->mOptionsMessage:Lcom/samsung/android/sdk/scs/ai/text/category/DocumentCategoryClassifier$ClassifyOptions;

    iput-object p1, p0, Lcom/android/server/notification/NotificationClassifier;->mContext:Landroid/content/Context;

    return-void
.end method
