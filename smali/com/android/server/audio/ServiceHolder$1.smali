.class public final Lcom/android/server/audio/ServiceHolder$1;
.super Landroid/os/IServiceCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/ServiceHolder;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/ServiceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/ServiceHolder$1;->this$0:Lcom/android/server/audio/ServiceHolder;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/ServiceHolder$1;->this$0:Lcom/android/server/audio/ServiceHolder;

    invoke-virtual {p0, p2}, Lcom/android/server/audio/ServiceHolder;->onServiceInited(Landroid/os/IBinder;)Landroid/os/IInterface;

    return-void
.end method
