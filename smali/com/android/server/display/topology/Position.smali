.class public final enum Lcom/android/server/display/topology/Position;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/topology/Position;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/topology/Position;

.field public static final enum bottom:Lcom/android/server/display/topology/Position;

.field public static final enum left:Lcom/android/server/display/topology/Position;

.field public static final enum right:Lcom/android/server/display/topology/Position;

.field public static final enum top:Lcom/android/server/display/topology/Position;


# instance fields
.field private final rawName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/android/server/display/topology/Position;

    const-string/jumbo v1, "left"

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/display/topology/Position;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/topology/Position;->left:Lcom/android/server/display/topology/Position;

    new-instance v1, Lcom/android/server/display/topology/Position;

    const-string/jumbo v2, "top"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v2}, Lcom/android/server/display/topology/Position;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/display/topology/Position;->top:Lcom/android/server/display/topology/Position;

    new-instance v2, Lcom/android/server/display/topology/Position;

    const-string/jumbo v3, "right"

    const/4 v4, 0x2

    invoke-direct {v2, v4, v3, v3}, Lcom/android/server/display/topology/Position;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/display/topology/Position;->right:Lcom/android/server/display/topology/Position;

    new-instance v3, Lcom/android/server/display/topology/Position;

    const-string/jumbo v4, "bottom"

    const/4 v5, 0x3

    invoke-direct {v3, v5, v4, v4}, Lcom/android/server/display/topology/Position;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/android/server/display/topology/Position;->bottom:Lcom/android/server/display/topology/Position;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/display/topology/Position;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/topology/Position;->$VALUES:[Lcom/android/server/display/topology/Position;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/server/display/topology/Position;->rawName:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/android/server/display/topology/Position;
    .locals 5

    invoke-static {}, Lcom/android/server/display/topology/Position;->values()[Lcom/android/server/display/topology/Position;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/android/server/display/topology/Position;->rawName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/topology/Position;
    .locals 1

    const-class v0, Lcom/android/server/display/topology/Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/topology/Position;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/topology/Position;
    .locals 1

    sget-object v0, Lcom/android/server/display/topology/Position;->$VALUES:[Lcom/android/server/display/topology/Position;

    invoke-virtual {v0}, [Lcom/android/server/display/topology/Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/topology/Position;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/display/topology/Position;->rawName:Ljava/lang/String;

    return-object p0
.end method
