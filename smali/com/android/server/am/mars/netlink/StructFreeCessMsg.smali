.class public final Lcom/android/server/am/mars/netlink/StructFreeCessMsg;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public cmd:I

.field public code:I

.field public dst_portid:I

.field public flag:I

.field public mod:I

.field public rpcname:[B

.field public src_portid:I

.field public target_uid:I

.field public type:I

.field public uid:I

.field public version:I


# direct methods
.method public static parse(Ljava/nio/ByteBuffer;)Lcom/android/server/am/mars/netlink/StructFreeCessMsg;
    .locals 5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    new-instance v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x64

    new-array v2, v1, [B

    iput-object v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    iput v2, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->version:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->target_uid:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->flag:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->code:I

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iget-object v4, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->rpcname:[B

    aput-byte v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->cmd:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->uid:I

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "struct.type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "struct.mode = "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->mod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "struct.src_portid = "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->src_portid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "struct.dst_portid = "

    invoke-static {v0, v1}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/server/am/mars/netlink/StructFreeCessMsg;->dst_portid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
