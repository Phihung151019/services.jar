.class public final Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final gatekeeperPassword:[B

.field public final userId:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->userId:I

    iput-object p2, p0, Lcom/android/server/locksettings/BiometricDeferredQueue$UserAuthInfo;->gatekeeperPassword:[B

    return-void
.end method
