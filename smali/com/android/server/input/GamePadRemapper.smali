.class public final Lcom/android/server/input/GamePadRemapper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final SIMPLE_BUTTON_LIST:Ljava/util/Set;

.field public static final SIMPLE_STICK_LIST:Ljava/util/Set;


# instance fields
.field public final mDataStore:Lcom/android/server/input/PersistentDataStore;

.field public final mDeviceToProfile:Ljava/util/Map;

.field public final mDeviceToProfileLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/input/GamePadRemapper;->SIMPLE_BUTTON_LIST:Ljava/util/Set;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x811

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x812

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/input/GamePadRemapper;->SIMPLE_STICK_LIST:Ljava/util/Set;

    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x80b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x80f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/PersistentDataStore;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    return-void
.end method

.method public static final getButtonString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x60

    if-eq p0, v0, :cond_c

    const/16 v0, 0x61

    if-eq p0, v0, :cond_b

    const/16 v0, 0x63

    if-eq p0, v0, :cond_a

    const/16 v0, 0x64

    if-eq p0, v0, :cond_9

    const/16 v0, 0x66

    if-eq p0, v0, :cond_8

    const/16 v0, 0x67

    if-eq p0, v0, :cond_7

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_6

    const/16 v0, 0x6b

    if-eq p0, v0, :cond_5

    const/16 v0, 0x800

    if-eq p0, v0, :cond_4

    const/16 v0, 0x80b

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x811

    if-eq p0, v0, :cond_1

    const/16 v0, 0x812

    if-eq p0, v0, :cond_0

    const-string/jumbo v0, "Wrong button "

    invoke-static {p0, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "BUTTON_RTRIGGER"

    return-object p0

    :cond_1
    const-string p0, "BUTTON_LTRIGGER"

    return-object p0

    :cond_2
    const-string/jumbo p0, "STICK_DPAD"

    return-object p0

    :cond_3
    const-string/jumbo p0, "STICK_RIGHT"

    return-object p0

    :cond_4
    const-string/jumbo p0, "STICK_LEFT"

    return-object p0

    :cond_5
    const-string p0, "BUTTON_THUMBR"

    return-object p0

    :cond_6
    const-string p0, "BUTTON_THUMBL"

    return-object p0

    :cond_7
    const-string p0, "BUTTON_R2"

    return-object p0

    :cond_8
    const-string p0, "BUTTON_L1"

    return-object p0

    :cond_9
    const-string p0, "BUTTON_Y"

    return-object p0

    :cond_a
    const-string p0, "BUTTON_X"

    return-object p0

    :cond_b
    const-string p0, "BUTTON_B"

    return-object p0

    :cond_c
    const-string p0, "BUTTON_A"

    return-object p0
.end method

.method public static isValidButton(I)Z
    .locals 1

    const/16 v0, 0x60

    if-eq p0, v0, :cond_0

    const/16 v0, 0x61

    if-eq p0, v0, :cond_0

    const/16 v0, 0x63

    if-eq p0, v0, :cond_0

    const/16 v0, 0x64

    if-eq p0, v0, :cond_0

    const/16 v0, 0x66

    if-eq p0, v0, :cond_0

    const/16 v0, 0x67

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6a

    if-eq p0, v0, :cond_0

    const/16 v0, 0x6b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x811

    if-eq p0, v0, :cond_0

    const/16 v0, 0x812

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isValidId(I)Z
    .locals 1

    if-ltz p0, :cond_1

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final systemRunning()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfileLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDeviceToProfile:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/input/GamePadRemapper;->mDataStore:Lcom/android/server/input/PersistentDataStore;

    invoke-virtual {p0}, Lcom/android/server/input/PersistentDataStore;->loadIfNeededGamePadProfiles()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
