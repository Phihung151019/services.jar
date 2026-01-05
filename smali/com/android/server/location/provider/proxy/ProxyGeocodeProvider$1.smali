.class public final Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic val$callback:Landroid/location/provider/IGeocodeCallback;

.field public final synthetic val$request:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    return-void
.end method

.method public constructor <init>(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :pswitch_0
    :try_start_1
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final run(Landroid/os/IBinder;)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Landroid/location/provider/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Ljava/lang/Object;

    check-cast v0, Landroid/location/provider/ForwardGeocodeRequest;

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    invoke-interface {p1, v0, p0}, Landroid/location/provider/IGeocodeProvider;->forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Landroid/location/provider/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Ljava/lang/Object;

    check-cast v0, Landroid/location/provider/ReverseGeocodeRequest;

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    invoke-interface {p1, v0, p0}, Landroid/location/provider/IGeocodeProvider;->reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
