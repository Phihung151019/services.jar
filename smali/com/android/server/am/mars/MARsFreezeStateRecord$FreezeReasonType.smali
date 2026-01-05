.class public final enum Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

.field public static final enum FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;


# instance fields
.field private final freezeType:Ljava/lang/String;

.field private final typeNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "Total"

    const-string v4, "FREEZE_TOTAL"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->FREEZE_TOTAL:Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    new-instance v1, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Bg"

    const-string v5, "FREEZE_REASON_LCDON"

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "LEV"

    const-string v6, "FREEZE_REASON_LCDOFF"

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string/jumbo v6, "OLAF"

    const-string v7, "FREEZE_REASON_OLAF"

    invoke-direct {v3, v4, v5, v7, v6}, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->typeNum:I

    iput-object p4, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->freezeType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
    .locals 1

    const-class v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;
    .locals 1

    sget-object v0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->$VALUES:[Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    invoke-virtual {v0}, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;

    return-object v0
.end method


# virtual methods
.method public final getTypeNum()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/mars/MARsFreezeStateRecord$FreezeReasonType;->typeNum:I

    return p0
.end method
