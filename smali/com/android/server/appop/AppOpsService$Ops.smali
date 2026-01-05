.class public final Lcom/android/server/appop/AppOpsService$Ops;
.super Landroid/util/SparseArray;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public bypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field public final knownAttributionTags:Landroid/util/ArraySet;

.field public final packageName:Ljava/lang/String;

.field public final uidState:Lcom/android/server/appop/AppOpsService$UidState;

.field public final validAttributionTags:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/server/appop/AppOpsService$UidState;)V
    .locals 1

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->knownAttributionTags:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/AppOpsService$Ops;->validAttributionTags:Landroid/util/ArraySet;

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$Ops;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$Ops;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    return-void
.end method
