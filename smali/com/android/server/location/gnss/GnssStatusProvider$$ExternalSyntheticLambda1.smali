.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

.field public final synthetic f$1:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssStatusProvider;Landroid/location/GnssStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/gnss/GnssStatusProvider;

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$1:Landroid/location/GnssStatus;

    check-cast p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssStatusProvider;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda4;-><init>(Landroid/location/GnssStatus;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
