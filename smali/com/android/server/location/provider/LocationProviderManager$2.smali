.class public final Lcom/android/server/location/provider/LocationProviderManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/location/injector/PackageResetHelper$Responder;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/provider/LocationProviderManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$2;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    return-void
.end method


# virtual methods
.method public final isResetableForPackage(Ljava/lang/String;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$2;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda37;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda37;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->findRegistration(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final onPackageReset(Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$2;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda37;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda37;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method
