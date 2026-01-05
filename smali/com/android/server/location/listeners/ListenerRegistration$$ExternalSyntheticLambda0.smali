.class public final synthetic Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/listeners/RemovableListenerRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerRegistration$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/listeners/RemovableListenerRegistration;

    iget-object p0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mListener:Ljava/lang/Object;

    return-object p0
.end method
