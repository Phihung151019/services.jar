.class public final synthetic Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iput-boolean p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;->f$1:Z

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-boolean p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$$ExternalSyntheticLambda1;->f$1:Z

    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;->deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V

    return-void
.end method
