.class public final enum Lcom/android/server/am/mars/events/EventType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/mars/events/EventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/events/EventType;

.field public static final enum FREEZE:Lcom/android/server/am/mars/events/EventType;

.field public static final enum FREEZE_SKIP_SCREEN_OFF:Lcom/android/server/am/mars/events/EventType;

.field public static final enum FREEZE_SKIP_SCREEN_ON:Lcom/android/server/am/mars/events/EventType;

.field public static final enum NONE:Lcom/android/server/am/mars/events/EventType;

.field public static final enum UID_RUN:Lcom/android/server/am/mars/events/EventType;

.field public static final enum UID_STOP:Lcom/android/server/am/mars/events/EventType;

.field public static final enum UNFREEZE:Lcom/android/server/am/mars/events/EventType;


# instance fields
.field private final number:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/am/mars/events/EventType;

    const-string/jumbo v1, "UID_RUN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/am/mars/events/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/mars/events/EventType;->UID_RUN:Lcom/android/server/am/mars/events/EventType;

    new-instance v1, Lcom/android/server/am/mars/events/EventType;

    const-string/jumbo v2, "UID_STOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/android/server/am/mars/events/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/am/mars/events/EventType;->UID_STOP:Lcom/android/server/am/mars/events/EventType;

    new-instance v2, Lcom/android/server/am/mars/events/EventType;

    const-string v3, "FREEZE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/android/server/am/mars/events/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/am/mars/events/EventType;->FREEZE:Lcom/android/server/am/mars/events/EventType;

    new-instance v3, Lcom/android/server/am/mars/events/EventType;

    const-string/jumbo v4, "UNFREEZE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/android/server/am/mars/events/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/am/mars/events/EventType;->UNFREEZE:Lcom/android/server/am/mars/events/EventType;

    new-instance v4, Lcom/android/server/am/mars/events/EventType;

    const-string v5, "FREEZE_SKIP_SCREEN_ON"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/android/server/am/mars/events/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/am/mars/events/EventType;->FREEZE_SKIP_SCREEN_ON:Lcom/android/server/am/mars/events/EventType;

    new-instance v5, Lcom/android/server/am/mars/events/EventType;

    const-string v6, "FREEZE_SKIP_SCREEN_OFF"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/android/server/am/mars/events/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/am/mars/events/EventType;->FREEZE_SKIP_SCREEN_OFF:Lcom/android/server/am/mars/events/EventType;

    new-instance v6, Lcom/android/server/am/mars/events/EventType;

    const-string/jumbo v7, "NONE"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcom/android/server/am/mars/events/EventType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/am/mars/events/EventType;->NONE:Lcom/android/server/am/mars/events/EventType;

    filled-new-array/range {v0 .. v6}, [Lcom/android/server/am/mars/events/EventType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/events/EventType;->$VALUES:[Lcom/android/server/am/mars/events/EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/am/mars/events/EventType;->number:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/server/am/mars/events/EventType;
    .locals 5

    invoke-static {}, Lcom/android/server/am/mars/events/EventType;->values()[Lcom/android/server/am/mars/events/EventType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/am/mars/events/EventType;->number:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/am/mars/events/EventType;->NONE:Lcom/android/server/am/mars/events/EventType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/events/EventType;
    .locals 1

    const-class v0, Lcom/android/server/am/mars/events/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/events/EventType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/events/EventType;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/events/EventType;->$VALUES:[Lcom/android/server/am/mars/events/EventType;

    invoke-virtual {v0}, [Lcom/android/server/am/mars/events/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/mars/events/EventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/events/EventType;->number:I

    return p0
.end method
