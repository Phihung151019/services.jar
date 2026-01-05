.class final enum Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;


# instance fields
.field private final displayState:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string/jumbo v1, "ON"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string/jumbo v2, "ON_SUSPEND"

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-direct {v1, v2, v4, v5}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string/jumbo v5, "VR"

    const/4 v6, 0x5

    invoke-direct {v2, v5, v3, v6}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string v5, "DOZE"

    const/4 v7, 0x3

    invoke-direct {v3, v5, v7, v7}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    move v5, v4

    new-instance v4, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string v7, "DOZE_SUSPEND"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v8, v8}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    move v7, v5

    new-instance v5, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    const-string/jumbo v8, "OFF"

    invoke-direct {v5, v8, v6, v7}, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;-><init>(Ljava/lang/String;II)V

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->$VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->displayState:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
    .locals 1

    const-class v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    return-object p0
.end method

.method public static values()[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;
    .locals 1

    sget-object v0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->$VALUES:[Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    invoke-virtual {v0}, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;

    return-object v0
.end method


# virtual methods
.method public final getDisplayState()I
    .locals 0

    iget p0, p0, Lcom/android/server/display/DisplayManagerService$DisplayStatePriority;->displayState:I

    return p0
.end method
