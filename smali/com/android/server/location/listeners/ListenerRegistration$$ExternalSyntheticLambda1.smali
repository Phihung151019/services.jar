.class public final synthetic Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$FailureCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;

    return-void
.end method


# virtual methods
.method public final onFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    return-void
.end method
