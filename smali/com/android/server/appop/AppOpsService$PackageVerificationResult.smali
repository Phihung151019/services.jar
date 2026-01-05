.class public final Lcom/android/server/appop/AppOpsService$PackageVerificationResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final bypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field public final isAttributionTagValid:Z


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$RestrictionBypass;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->bypass:Landroid/app/AppOpsManager$RestrictionBypass;

    iput-boolean p2, p0, Lcom/android/server/appop/AppOpsService$PackageVerificationResult;->isAttributionTagValid:Z

    return-void
.end method
