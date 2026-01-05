.class public final Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public mIndex:I

.field public final mScore:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-byte v2, p2, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    return-void
.end method


# virtual methods
.method public final compareTo(Ljava/lang/Object;)I
    .locals 5

    check-cast p1, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;

    iget-object p0, p0, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    iget-object p1, p1, Lcom/android/server/inputmethod/LocaleUtils$ScoreEntry;->mScore:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    aget-byte v2, p0, v1

    aget-byte v4, p1, v1

    if-le v2, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-ge v2, v4, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    mul-int/2addr v0, v3

    return v0
.end method
