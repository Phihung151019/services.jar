.class public final Lcom/android/server/NandswapManager$ProcessingManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final countList:Ljava/util/ArrayList;

.field public objReads:I

.field public objWrites:I

.field public reads:I

.field public final sizeList:Ljava/util/ArrayList;

.field public writes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->reads:I

    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->writes:I

    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objReads:I

    iput v0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->objWrites:I

    return-void
.end method


# virtual methods
.method public final calcAverage(I)D
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v4, p1

    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->countList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move-wide v6, v2

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v8, v0

    add-double/2addr v6, v8

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-double v4, p1

    iget-object p0, p0, Lcom/android/server/NandswapManager$ProcessingManager;->sizeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move-wide v6, v2

    :goto_1
    if-ge v1, p1, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v8, v0

    add-double/2addr v6, v8

    goto :goto_1

    :cond_1
    move-wide v4, v2

    move-wide v6, v4

    :cond_2
    cmpl-double p0, v4, v2

    if-nez p0, :cond_3

    return-wide v2

    :cond_3
    div-double/2addr v6, v4

    return-wide v6
.end method
