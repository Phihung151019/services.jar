.class public final Lcom/android/server/knox/zt/devicetrust/data/SockEventData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final daddr:Ljava/lang/String;

.field public final dport:I

.field public final exitCode:I

.field public final family:I

.field public final fd:I

.field public final filepath:Ljava/lang/String;

.field public final gid:I

.field public final newstate:I

.field public final oldstate:I

.field public final pid:I

.field public final ppid:I

.field public final protocol:I

.field public final saddr:Ljava/lang/String;

.field public final sport:I

.field public final syscall:I

.field public final tid:I

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(IJIIIIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    iput p6, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    iput p7, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    iput p8, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    iput p9, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    iput p10, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    iput p11, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    iput p12, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    iput p13, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    iput p14, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    iput p15, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    move/from16 p1, p16

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    move/from16 p1, p17

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    move/from16 p1, p18

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    move-object/from16 p1, p21

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    return p0
.end method

.method public final getUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    return p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    const-string/jumbo v3, "when"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    const-string/jumbo v2, "what"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "syscall"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "exitCode"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "tid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ppid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "gid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "oldstate"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "newstate"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "fd"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "family"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "protocol"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sport"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "dport"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "saddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "daddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "filepath"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final toJson()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "when"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "what"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "syscall"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "exitCode"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "tid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ppid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "gid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "oldstate"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "newstate"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "fd"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "family"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "protocol"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "sport"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "dport"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "saddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "daddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "filepath"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 25

    move-object/from16 v0, p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v2, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    iget v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    move-object/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    move-object/from16 v23, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v22, v3

    filled-new-array/range {v4 .. v24}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "when : %d | what : %d | syscall : %d | exitCode : %d | tid : %d | pid : %d | ppid : %d | uid : %d | gid : %d | oldstate : %d | newstate : %d | fd : %d | family : %d | type : %d | protocol : %d | sport : %d | dport : %d | saddr : %d | daddr : %d | filepath : %s%s"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "when"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "what"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->syscall:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "syscall"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->exitCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "exitCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->tid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->ppid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ppid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->gid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->oldstate:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "oldstate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->newstate:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "newstate"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->fd:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->family:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "family"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->type:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->protocol:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "protocol"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->sport:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sport"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->dport:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "dport"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "saddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->saddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "daddr"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->daddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "filepath"

    iget-object p0, p0, Lcom/android/server/knox/zt/devicetrust/data/SockEventData;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
