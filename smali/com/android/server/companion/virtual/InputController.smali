.class Lcom/android/server/companion/virtual/InputController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputDeviceDescriptors:Landroid/util/ArrayMap;

.field public final mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

.field public final mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$smnativeCloseUinput(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputDpad(IILjava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p2, p0, p1, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputKeyboard(IILjava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p2, p0, p1, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputMouse(IILjava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p2, p0, p1, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputRotaryEncoder(IILjava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p2, p0, p1, p3}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputStylus(IIILjava/lang/String;Ljava/lang/String;I)J
    .locals 1

    move v0, p1

    move p1, p0

    move-object p0, p3

    move-object p3, p4

    move p4, p2

    move p2, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeOpenUinputTouchscreen(IIILjava/lang/String;Ljava/lang/String;I)J
    .locals 1

    move v0, p1

    move p1, p0

    move-object p0, p3

    move-object p3, p4

    move p4, p2

    move p2, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteButtonEvent(IIJJ)Z
    .locals 2

    move-wide v0, p2

    move p2, p0

    move p3, p1

    move-wide p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteDpadKeyEvent(IIJJ)Z
    .locals 2

    move-wide v0, p2

    move p2, p0

    move p3, p1

    move-wide p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteDpadKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteKeyEvent(IIJJ)Z
    .locals 2

    move-wide v0, p2

    move p2, p0

    move p3, p1

    move-wide p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteKeyEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteRelativeEvent(JFFJ)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/companion/virtual/InputController;->nativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteScrollEvent(JFFJ)Z
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteScrollEvent(JFFJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteStylusButtonEvent(IIJJ)Z
    .locals 2

    move-wide v0, p2

    move p2, p0

    move p3, p1

    move-wide p0, v0

    invoke-static/range {p0 .. p5}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusButtonEvent(JIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteStylusMotionEvent(JIIIIIIIJ)Z
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z
    .locals 0

    invoke-static/range {p0 .. p10}, Lcom/android/server/companion/virtual/InputController;->nativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/virtual/InputController$NativeWrapper;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/content/AttributionSource;Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/companion/virtual/InputController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    const-class p1, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerService$LocalService;

    iput-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController;->mWindowManager:Landroid/view/WindowManager;

    iput-object p4, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    iput-object p5, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    return-void
.end method

.method public static createPhys(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/server/companion/virtual/InputController;->sNextPhysId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v0, "virtual%s:%d"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static native nativeCloseUinput(J)V
.end method

.method private static native nativeOpenUinputDpad(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputKeyboard(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputMouse(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputRotaryEncoder(Ljava/lang/String;IILjava/lang/String;)J
.end method

.method private static native nativeOpenUinputStylus(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeOpenUinputTouchscreen(Ljava/lang/String;IILjava/lang/String;II)J
.end method

.method private static native nativeWriteButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteDpadKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteKeyEvent(JIIJ)Z
.end method

.method private static native nativeWriteRelativeEvent(JFFJ)Z
.end method

.method private static native nativeWriteRotaryEncoderScrollEvent(JFJ)Z
.end method

.method private static native nativeWriteScrollEvent(JFFJ)Z
.end method

.method private static native nativeWriteStylusButtonEvent(JIIJ)Z
.end method

.method private static native nativeWriteStylusMotionEvent(JIIIIIIIJ)Z
.end method

.method private static native nativeWriteTouchEvent(JIIIFFFFJ)Z
.end method


# virtual methods
.method public addDeviceForTesting(Landroid/os/IBinder;JIILjava/lang/String;Ljava/lang/String;I)V
    .locals 11

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    new-instance v5, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-wide v3, p2

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v2 .. v10}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final close()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {p0, v3, v2}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V
    .locals 2

    iget-object v0, p2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p1, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-static {v0, v1}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(J)V

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object p1

    iget-object v0, p2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    const/4 p1, 0x5

    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget p2, p2, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/input/InputManagerService;->unsetTypeAssociationInternal(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/input/InputManagerService;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    .locals 12

    move-object/from16 v9, p5

    move-object/from16 v8, p7

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mThreadVerifier:Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;

    invoke-interface {v0}, Lcom/android/server/companion/virtual/InputController$DeviceCreationThreadVerifier;->isValidThread()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    iget-object v4, v4, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input device name already in use: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    move/from16 v5, p6

    invoke-virtual {v1, v5}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v3

    invoke-virtual {v3, v8, v1}, Landroid/hardware/input/InputManagerGlobal;->addUniqueIdAssociationByPort(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Lcom/android/server/companion/virtual/InputController$WaitForDevice;

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move v6, v5

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;III)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-interface/range {p8 .. p8}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->waitForDeviceCreation()I

    move-result v8
    :try_end_3
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object v4, v1

    move-wide v1, v2

    :try_start_4
    new-instance v3, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;

    invoke-direct {v3, p0, v9}, Lcom/android/server/companion/virtual/InputController$BinderDeathRecipient;-><init>(Lcom/android/server/companion/virtual/InputController;Landroid/os/IBinder;)V
    :try_end_4
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-interface {v9, v3, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_6
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_6 .. :try_end_6} :catch_0

    iget-object v10, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_7
    iget-object v11, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    move v4, p1

    move-object v7, p2

    move/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;-><init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v11, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "No metric known for input type: "

    const-string/jumbo v1, "VirtualInputController"

    invoke-static {p1, v0, v1}, Lcom/android/server/ExtendedEthernetServiceImpl$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    const-string/jumbo v0, "virtual_devices.value_virtual_rotary_created_count"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v0, "virtual_devices.value_virtual_stylus_created_count"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v0, "virtual_devices.value_virtual_navigationtouchpad_created_count"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v0, "virtual_devices.value_virtual_dpad_created_count"

    goto :goto_1

    :pswitch_4
    const-string/jumbo v0, "virtual_devices.value_virtual_touchscreen_created_count"

    goto :goto_1

    :pswitch_5
    const-string/jumbo v0, "virtual_devices.value_virtual_mouse_created_count"

    goto :goto_1

    :pswitch_6
    const-string/jumbo v0, "virtual_devices.value_virtual_keyboard_created_count"

    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/modules/expresslog/Counter;->logIncrementWithUid(Ljava/lang/String;I)V

    :cond_2
    return-void

    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v8, p7

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v8, p7

    :goto_2
    move-object v1, v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object/from16 v8, p7

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v8, p7

    :try_start_9
    new-instance v3, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    const-string v5, "Client died before virtual device could be created."

    invoke-direct {v3, v5, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_9
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object/from16 v8, p7

    :goto_3
    move-object v4, v1

    goto :goto_2

    :catch_4
    move-exception v0

    move-object/from16 v8, p7

    move-object v4, v1

    move-wide v1, v2

    :goto_4
    :try_start_a
    iget-object v3, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/android/server/companion/virtual/InputController;->nativeCloseUinput(J)V

    throw v0

    :cond_3
    move-object v4, v1

    new-instance v0, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A native error occurred when creating virtual input device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/companion/virtual/InputController$DeviceCreationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_5
    move-exception v0

    goto :goto_3

    :goto_5
    :try_start_b
    invoke-virtual {v4}, Lcom/android/server/companion/virtual/InputController$WaitForDevice;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v0

    :try_start_c
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_c
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_c .. :try_end_c} :catch_5

    :catch_5
    move-exception v0

    :goto_7
    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/hardware/input/InputManagerGlobal;->removeUniqueIdAssociationByPort(Ljava/lang/String;)V

    throw v0

    :goto_8
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Virtual device creation should happen on an auxiliary thread (e.g. binder thread) and not from the handler\'s thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final createKeyboard(Ljava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-string v0, "Keyboard"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    iget-object v10, v0, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {v10, v8, v0, v1}, Lcom/android/server/input/InputManagerService;->addKeyboardLayoutAssociation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, v8

    move-object v1, v9

    :try_start_1
    invoke-direct/range {v1 .. v7}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x1

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move/from16 v7, p5

    :try_start_2
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v6

    goto :goto_0

    :goto_1
    sget-boolean p1, Lcom/android/server/input/InputManagerService;->DEBUG:Z

    invoke-virtual {v10, v8}, Lcom/android/server/input/InputManagerService;->removeKeyboardLayoutAssociation(Ljava/lang/String;)V

    throw p0
.end method

.method public final createNavigationTouchpad(IIIIILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 11

    const-string/jumbo v0, "NavigationTouchpad"

    invoke-static {v0}, Lcom/android/server/companion/virtual/InputController;->createPhys(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/companion/virtual/InputController;->mInputManagerInternal:Lcom/android/server/input/InputManagerService$LocalService;

    iget-object v0, v10, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    const-string/jumbo v1, "touchNavigation"

    invoke-virtual {v0, v8, v1}, Lcom/android/server/input/InputManagerService;->setTypeAssociationInternal(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v9, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;
    :try_end_0
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v9

    const/4 v9, 0x1

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v7, p4

    move-object/from16 v3, p7

    move-object v6, v8

    move/from16 v8, p5

    :try_start_1
    invoke-direct/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/companion/virtual/InputController;Ljava/lang/String;IILjava/lang/String;III)V
    :try_end_1
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v6

    const/4 v2, 0x5

    move v4, p1

    move v5, p2

    move v7, p3

    move-object/from16 v6, p6

    move-object/from16 v3, p7

    move-object v9, v1

    move-object v1, p0

    :try_start_2
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/companion/virtual/InputController;->createDeviceInternal(ILjava/lang/String;IILandroid/os/IBinder;ILjava/lang/String;Ljava/util/function/Supplier;)V
    :try_end_2
    .catch Lcom/android/server/companion/virtual/InputController$DeviceCreationException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v8, v6

    goto :goto_0

    :goto_1
    iget-object p1, v10, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, v8}, Lcom/android/server/input/InputManagerService;->unsetTypeAssociationInternal(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCursorPosition(Landroid/os/IBinder;)Landroid/graphics/PointF;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-eqz p0, :cond_1

    const-class p1, Lcom/android/server/input/InputManagerService$LocalService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/input/InputManagerService$LocalService;

    iget p0, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    iget-object p1, p1, Lcom/android/server/input/InputManagerService$LocalService;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object p1, p1, Lcom/android/server/input/InputManagerService;->mNative:Lcom/android/server/input/NativeInputManagerService$NativeImpl;

    invoke-interface {p1, p0}, Lcom/android/server/input/NativeInputManagerService;->getMouseCursorPosition(I)[F

    move-result-object p0

    if-eqz p0, :cond_0

    array-length p1, p0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    new-instance p1, Landroid/graphics/PointF;

    const/4 v1, 0x0

    aget v1, p0, v1

    const/4 v2, 0x1

    aget p0, p0, v2

    invoke-direct {p1, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to get mouse cursor position"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Could not get cursor position for input device for given token"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getInputDeviceDescriptors()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseButtonEvent;)Z
    .locals 8

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v4, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getButtonCode()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getAction()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseButtonEvent;->getEventTimeNanos()J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteButtonEvent(IIJJ)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendDpadKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 8

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v4, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteDpadKeyEvent(IIJJ)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendKeyEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualKeyEvent;)Z
    .locals 8

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v4, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getAction()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/input/VirtualKeyEvent;->getEventTimeNanos()J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteKeyEvent(IIJJ)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendRelativeEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseRelativeEvent;)Z
    .locals 8

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v2, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeX()F

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getRelativeY()F

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseRelativeEvent;->getEventTimeNanos()J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRelativeEvent(JFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendRotaryEncoderScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v1, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->getScrollAmount()F

    move-result p1

    invoke-virtual {p2}, Landroid/hardware/input/VirtualRotaryEncoderScrollEvent;->getEventTimeNanos()J

    move-result-wide v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, p1, v3, v4}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteRotaryEncoderScrollEvent(JFJ)Z

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendScrollEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualMouseScrollEvent;)Z
    .locals 8

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v2, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getXAxisMovement()F

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getYAxisMovement()F

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualMouseScrollEvent;->getEventTimeNanos()J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteScrollEvent(JFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendStylusButtonEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusButtonEvent;)Z
    .locals 8

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v2, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getButtonCode()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusButtonEvent;->getEventTimeNanos()J

    move-result-wide v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v7}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusButtonEvent(JIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendStylusMotionEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualStylusMotionEvent;)Z
    .locals 13

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v2, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getToolType()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getAction()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getX()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getY()I

    move-result v7

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getPressure()I

    move-result v8

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltX()I

    move-result v9

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getTiltY()I

    move-result v10

    invoke-virtual {p2}, Landroid/hardware/input/VirtualStylusMotionEvent;->getEventTimeNanos()J

    move-result-wide v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v12}, Lcom/android/server/companion/virtual/InputController;->nativeWriteStylusMotionEvent(JIIIIIIIJ)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final sendTouchEvent(Landroid/os/IBinder;Landroid/hardware/input/VirtualTouchEvent;)Z
    .locals 13

    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/companion/virtual/InputController;->mNativeWrapper:Lcom/android/server/companion/virtual/InputController$NativeWrapper;

    iget-wide v2, p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getPointerId()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getToolType()I

    move-result v5

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getAction()I

    move-result v6

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getY()F

    move-result v8

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getPressure()F

    move-result v9

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getMajorAxisSize()F

    move-result v10

    invoke-virtual {p2}, Landroid/hardware/input/VirtualTouchEvent;->getEventTimeNanos()J

    move-result-wide v11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v2 .. v12}, Lcom/android/server/companion/virtual/InputController;->-$$Nest$smnativeWriteTouchEvent(JIIIFFFFJ)Z

    move-result p0

    monitor-exit v1

    return p0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final unregisterInputDevice(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/companion/virtual/InputController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/companion/virtual/InputController;->mInputDeviceDescriptors:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;

    if-nez v1, :cond_0

    const-string/jumbo p0, "VirtualInputController"

    const-string p1, "Could not unregister input device for given token."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/virtual/InputController;->closeInputDeviceDescriptorLocked(Landroid/os/IBinder;Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
