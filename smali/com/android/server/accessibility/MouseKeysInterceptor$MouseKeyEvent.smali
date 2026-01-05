.class public final enum Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

.field public static final enum UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;


# instance fields
.field private final mLocationKeyCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v1, 0xe

    const-string v2, "DIAGONAL_UP_LEFT_MOVE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    new-instance v1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v2, 0xf

    const-string/jumbo v3, "UP_MOVE_OR_SCROLL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->UP_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    new-instance v2, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v3, 0x10

    const-string v4, "DIAGONAL_UP_RIGHT_MOVE"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    new-instance v3, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v4, 0x31

    const-string v5, "LEFT_MOVE_OR_SCROLL"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    new-instance v4, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v5, 0x2b

    const-string/jumbo v6, "RIGHT_MOVE_OR_SCROLL"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    new-instance v5, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v6, 0x26

    const-string v7, "DIAGONAL_DOWN_LEFT_MOVE"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    new-instance v6, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v7, 0x27

    const-string v8, "DOWN_MOVE_OR_SCROLL"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->DOWN_MOVE_OR_SCROLL:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    new-instance v7, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v8, 0x28

    const-string v9, "DIAGONAL_DOWN_RIGHT_MOVE"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    new-instance v8, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v9, 0x25

    const-string v10, "LEFT_CLICK"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->LEFT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    new-instance v9, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v10, 0x4c

    const-string/jumbo v11, "RIGHT_CLICK"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RIGHT_CLICK:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    new-instance v10, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v11, 0x29

    const-string v12, "HOLD"

    const/16 v13, 0xa

    invoke-direct {v10, v12, v13, v11}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->HOLD:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    new-instance v11, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v12, 0x37

    const-string/jumbo v13, "RELEASE"

    const/16 v14, 0xb

    invoke-direct {v11, v13, v14, v12}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->RELEASE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    new-instance v12, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    const/16 v13, 0x38

    const-string/jumbo v14, "SCROLL_TOGGLE"

    const/16 v15, 0xc

    invoke-direct {v12, v14, v15, v13}, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->SCROLL_TOGGLE:Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    filled-new-array/range {v0 .. v12}, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->$VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mLocationKeyCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .locals 1

    const-class v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;
    .locals 1

    sget-object v0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->$VALUES:[Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    invoke-virtual {v0}, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;

    return-object v0
.end method


# virtual methods
.method public final getKeyCode(Landroid/view/InputDevice;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/InputDevice;->getGeneration()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mLocationKeyCode:I

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mLocationKeyCode:I

    invoke-virtual {p1, p0}, Landroid/view/InputDevice;->getKeyCodeForKeyLocation(I)I

    move-result p0

    return p0
.end method

.method public final getKeyCodeValue()I
    .locals 0

    iget p0, p0, Lcom/android/server/accessibility/MouseKeysInterceptor$MouseKeyEvent;->mLocationKeyCode:I

    return p0
.end method
