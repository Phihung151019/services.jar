.class public final Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;
.super Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/RemoteInjectionInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final isRemoteControlDisabled(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService$LocalService;->this$0:Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/remotecontrol/RemoteInjectionService;->isRemoteControlDisabled(I)Z

    move-result p0

    return p0
.end method
