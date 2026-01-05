.class public final Lcom/android/server/devicepolicy/FactoryResetter$Builder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mForce:Z

.field public mReason:Ljava/lang/String;

.field public mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field public mWipeAdoptableStorage:Z

.field public mWipeEuicc:Z

.field public mWipeFactoryResetProtection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mContext:Landroid/content/Context;

    return-void
.end method
