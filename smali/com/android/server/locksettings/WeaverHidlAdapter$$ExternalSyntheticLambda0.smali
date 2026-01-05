.class public final synthetic Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/hardware/weaver/V1_0/IWeaver$readCallback;


# instance fields
.field public final synthetic f$0:[Landroid/hardware/weaver/WeaverReadResponse;


# direct methods
.method public synthetic constructor <init>([Landroid/hardware/weaver/WeaverReadResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;->f$0:[Landroid/hardware/weaver/WeaverReadResponse;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/weaver/V1_0/WeaverReadResponse;)V
    .locals 5

    new-instance v0, Landroid/hardware/weaver/WeaverReadResponse;

    invoke-direct {v0}, Landroid/hardware/weaver/WeaverReadResponse;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    const-string/jumbo v3, "Unexpected status in read: "

    const-string/jumbo v4, "WeaverHidlAdapter"

    invoke-static {p1, v3, v4}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iput v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    goto :goto_0

    :cond_0
    iput v3, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    goto :goto_0

    :cond_1
    iput v3, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    goto :goto_0

    :cond_2
    iput v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    goto :goto_0

    :cond_3
    iput v1, v0, Landroid/hardware/weaver/WeaverReadResponse;->status:I

    :goto_0
    iget p1, p2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->timeout:I

    int-to-long v2, p1

    iput-wide v2, v0, Landroid/hardware/weaver/WeaverReadResponse;->timeout:J

    iget-object p1, p2, Landroid/hardware/weaver/V1_0/WeaverReadResponse;->value:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [B

    move v2, v1

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iput-object p2, v0, Landroid/hardware/weaver/WeaverReadResponse;->value:[B

    iget-object p0, p0, Lcom/android/server/locksettings/WeaverHidlAdapter$$ExternalSyntheticLambda0;->f$0:[Landroid/hardware/weaver/WeaverReadResponse;

    aput-object v0, p0, v1

    return-void
.end method
