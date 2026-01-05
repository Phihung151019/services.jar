.class public final Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;
.super Lcom/android/server/knox/zt/devicetrust/data/EndpointData;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final atime:J

.field public final cmdline:Ljava/lang/String;

.field public final ctime:J

.field public final cwd:Ljava/lang/String;

.field public final egid:I

.field public final euid:I

.field public final exitCode:I

.field public final filepath:Ljava/lang/String;

.field public final fsgid:I

.field public final fsuid:I

.field public final gid:I

.field public final mtime:J

.field public final ownerGid:I

.field public final ownerUid:I

.field public final pid:I

.field public final ppid:I

.field public final reserved_1:J

.field public final reserved_2:J

.field public final reserved_3:J

.field public final sgid:I

.field public final suid:I

.field public final syscall:I

.field public final tid:I

.field public final uid:I


# direct methods
.method public constructor <init>(IJIIIIIIIIIIIIIIIJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p3}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;-><init>(IJ)V

    iput p4, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    iput p5, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    iput p6, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    iput p7, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    iput p8, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    iput p9, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    iput p10, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    iput p11, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    iput p12, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    iput p13, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    iput p14, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    iput p15, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    move/from16 p1, p16

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    move/from16 p1, p17

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    move/from16 p1, p18

    iput p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    move-wide/from16 p1, p19

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    move-wide/from16 p1, p21

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    move-wide/from16 p1, p23

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    move-object/from16 p1, p25

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    move-object/from16 p1, p26

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    move-object/from16 p1, p27

    iput-object p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    move-wide/from16 p1, p28

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    move-wide/from16 p1, p30

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    move-wide/from16 p1, p32

    iput-wide p1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    return-void
.end method


# virtual methods
.method public final getPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    return p0
.end method

.method public final getUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

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

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "exitCode"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "tid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "pid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ppid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "gid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "suid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "sgid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "euid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "egid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "fsuid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "fsgid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ownerUid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "ownerGid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "atime"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "mtime"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "ctime"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "filepath"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cwd"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "cmdline"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "reserved_1"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "reserved_2"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "reserved_3"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

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

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "exitCode"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "tid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "pid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ppid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "uid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "gid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "suid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "sgid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "euid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "egid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "fsuid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "fsgid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ownerUid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "ownerGid"

    iget v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "atime"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "mtime"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "ctime"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "filepath"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "cwd"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "cmdline"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "reserved_1"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "reserved_2"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "reserved_3"

    iget-wide v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toLine()Ljava/lang/String;
    .locals 36

    move-object/from16 v0, p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-wide v1, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->actualEventTime:J

    iget v3, v0, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->event:I

    iget v4, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    iget v5, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    iget v6, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    iget v7, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    iget v8, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    iget v9, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    iget v10, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    iget v11, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    iget v12, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    iget v13, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    iget v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    move/from16 v16, v14

    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    move/from16 v17, v14

    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    move/from16 v18, v14

    iget v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    move/from16 v20, v14

    move/from16 v19, v15

    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    move-wide/from16 v21, v14

    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    move-wide/from16 v23, v14

    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    move-wide/from16 v25, v14

    iget-object v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    iget-object v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    move-object/from16 v27, v15

    iget-object v15, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    move-object/from16 v28, v14

    move-object/from16 v29, v15

    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    move-wide/from16 v30, v14

    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    move-wide/from16 v32, v14

    iget-wide v14, v0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    move-wide/from16 v34, v14

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Lcom/android/server/knox/zt/devicetrust/data/EndpointData;->readExtras(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v14, "when : "

    const-string v15, " | what : "

    invoke-static {v3, v14, v1, v2, v15}, Lcom/android/server/SystemServiceManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | syscall : "

    const-string v3, " | exitCode : "

    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, " | tid : "

    const-string v3, " | pid : "

    invoke-static {v6, v7, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, " | ppid : "

    const-string v3, " | uid : "

    invoke-static {v8, v9, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, " | gid : "

    const-string v3, " | suid : "

    invoke-static {v10, v11, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, " | sgid : "

    const-string v3, " | euid : "

    invoke-static {v12, v13, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, " | egid : "

    const-string v3, " | fsuid : "

    move/from16 v4, v16

    move/from16 v5, v19

    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, " | fsgid : "

    const-string v3, " | ownerUid : "

    move/from16 v4, v17

    move/from16 v5, v18

    invoke-static {v4, v5, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v2, " | ownerGid : "

    const-string v3, " | atime : "

    move/from16 v4, v20

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    move-wide/from16 v2, v21

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " | mtime : "

    const-string v3, " | ctime : "

    move-wide/from16 v4, v23

    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v2, v25

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " | filepath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | cwd : "

    const-string v3, " | cmdline : "

    move-object/from16 v4, v27

    move-object/from16 v5, v29

    invoke-static {v1, v2, v4, v3, v5}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "reserved_1 : "

    const-string v3, " | reserved_2 : "

    move-wide/from16 v4, v30

    invoke-static {v1, v2, v4, v5, v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    move-wide/from16 v2, v32

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " | reserved_3 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v34

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->syscall:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "syscall"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->exitCode:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "exitCode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->tid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "pid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ppid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ppid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->uid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->gid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "gid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->suid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "suid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->sgid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sgid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->euid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "euid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->egid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "egid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsuid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fsuid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->fsgid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "fsgid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ownerUid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ownerGid:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ownerGid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->atime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "atime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->mtime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mtime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->ctime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ctime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "filepath"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->filepath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "cwd"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cwd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "cmdline"

    iget-object v2, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->cmdline:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_1:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reserved_1"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_2:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reserved_2"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/server/knox/zt/devicetrust/data/ProcEventData;->reserved_3:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "reserved_3"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
