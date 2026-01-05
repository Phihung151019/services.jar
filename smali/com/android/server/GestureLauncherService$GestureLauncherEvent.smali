.class public final enum Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/logging/UiEventLogger$UiEventEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/GestureLauncherService$GestureLauncherEvent;",
        ">;",
        "Lcom/android/internal/logging/UiEventLogger$UiEventEnum;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

.field public static final enum GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;


# instance fields
.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const/16 v1, 0x292

    const-string v2, "GESTURE_CAMERA_LIFT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_LIFT:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    new-instance v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const/16 v2, 0x293

    const-string v3, "GESTURE_CAMERA_WIGGLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->GESTURE_CAMERA_WIGGLE:Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    new-instance v2, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const/16 v3, 0x294

    const-string v4, "GESTURE_CAMERA_DOUBLE_TAP_POWER"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    const/16 v4, 0x295

    const-string v5, "GESTURE_EMERGENCY_TAP_POWER"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 1

    const-class v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;
    .locals 1

    sget-object v0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->$VALUES:[Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    invoke-virtual {v0}, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/GestureLauncherService$GestureLauncherEvent;

    return-object v0
.end method


# virtual methods
.method public final getId()I
    .locals 0

    iget p0, p0, Lcom/android/server/GestureLauncherService$GestureLauncherEvent;->mId:I

    return p0
.end method
