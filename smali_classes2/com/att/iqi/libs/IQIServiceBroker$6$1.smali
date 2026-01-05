.class Lcom/att/iqi/libs/IQIServiceBroker$6$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;


# direct methods
.method public constructor <init>(Lcom/att/iqi/libs/IQIServiceBroker$6;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    iget-object v0, v0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "binderDied"

    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6$1;->this$1:Lcom/att/iqi/libs/IQIServiceBroker$6;

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker$6;->this$0:Lcom/att/iqi/libs/IQIServiceBroker;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->-$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
