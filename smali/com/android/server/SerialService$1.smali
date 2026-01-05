.class public final Lcom/android/server/SerialService$1;
.super Landroid/hardware/SerialManagerInternal;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SerialService;


# direct methods
.method public constructor <init>(Lcom/android/server/SerialService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    invoke-direct {p0}, Landroid/hardware/SerialManagerInternal;-><init>()V

    return-void
.end method


# virtual methods
.method public final addVirtualSerialPortForTest(Ljava/lang/String;Ljava/util/function/Supplier;)V
    .locals 6

    const-string v0, " must be under virtual:"

    const-string/jumbo v1, "Port "

    const-string/jumbo v2, "Port "

    iget-object v3, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    iget-object v3, v3, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    iget-object v4, v4, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " already defined"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string/jumbo v2, "virtual:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final removeVirtualSerialPortForTest(Ljava/lang/String;)V
    .locals 6

    const-string v0, " must be under virtual:"

    const-string/jumbo v1, "Port "

    const-string/jumbo v2, "Port "

    iget-object v3, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    iget-object v3, v3, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    iget-object v4, v4, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not yet defined"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string/jumbo v2, "virtual:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/server/SerialService$1;->this$0:Lcom/android/server/SerialService;

    iget-object p0, p0, Lcom/android/server/SerialService;->mSerialPorts:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
