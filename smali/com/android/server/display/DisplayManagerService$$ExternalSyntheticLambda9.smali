.class public final synthetic Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 28

    move-object/from16 v0, p0

    const/4 v2, 0x1

    iget v3, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/display/DisplayManagerService$LocalService;

    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    check-cast v0, Landroid/util/IntArray;

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    iget-object v1, v1, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    iget v3, v3, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v1, v3}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->add(I)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v3, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/display/DisplayManagerService;

    iget-object v4, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$1:Ljava/lang/Object;

    check-cast v4, Landroid/util/SparseArray;

    iget-object v0, v0, Lcom/android/server/display/DisplayManagerService$$ExternalSyntheticLambda9;->f$2:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    move-object/from16 v5, p1

    check-cast v5, Lcom/android/server/display/LogicalDisplay;

    sget-boolean v6, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    iget-object v6, v5, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget v5, v5, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    if-eqz v6, :cond_37

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/display/DisplayManagerService;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-virtual {v5, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v7

    iget v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v8, v8, 0x80

    const/4 v9, 0x0

    if-eqz v8, :cond_1

    move v8, v2

    goto :goto_0

    :cond_1
    move v8, v9

    :goto_0
    iget-object v10, v3, Lcom/android/server/display/DisplayManagerService;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v11, 0x10000000

    and-int/2addr v10, v11

    if-nez v10, :cond_2

    iget-object v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    const-string/jumbo v13, "com.google.android.gms"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    const-string/jumbo v13, "com.samsung.android.smartmirroring"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    const-string/jumbo v13, "TestVirtualDisplay"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_2
    if-nez v8, :cond_5

    if-eqz v7, :cond_5

    iget-boolean v8, v7, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    if-nez v8, :cond_5

    iget-object v5, v5, Lcom/android/server/display/LogicalDisplayMapper;->mHiddenSpaceDisplay:Lcom/android/server/display/LogicalDisplay;

    if-eqz v5, :cond_3

    iget-boolean v8, v5, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    if-eqz v8, :cond_3

    move-object v8, v5

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    if-eqz v8, :cond_5

    if-eqz v5, :cond_4

    iget-boolean v7, v5, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    if-eqz v7, :cond_4

    move-object v7, v5

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :cond_5
    :goto_2
    const-string v5, "DisplayManagerService"

    if-eqz v7, :cond_36

    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_6

    iget v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/2addr v8, v11

    if-eqz v8, :cond_6

    goto/16 :goto_1e

    :cond_6
    iget v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-ne v8, v2, :cond_7

    move v8, v2

    goto :goto_3

    :cond_7
    move v8, v9

    :goto_3
    iget v10, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    const/4 v13, 0x4

    if-ne v10, v13, :cond_8

    move v8, v9

    :cond_8
    if-eqz v8, :cond_9

    const/4 v8, -0x1

    goto :goto_4

    :cond_9
    iget v8, v7, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_4
    iget v14, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    const-string v15, "DisplayDevice"

    move/from16 p0, v11

    const-string v11, " for "

    move/from16 p1, v13

    iget-object v13, v6, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    if-eq v14, v8, :cond_a

    iput v8, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStack:I

    iget-object v14, v6, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v14, v8}, Landroid/view/SurfaceControl$Transaction;->setDisplayLayerStack(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "["

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "] Layerstack set to "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-boolean v8, v7, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-eqz v8, :cond_b

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v8

    iget v8, v8, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-eqz v8, :cond_b

    move v8, v2

    goto :goto_5

    :cond_b
    move v8, v9

    :goto_5
    iget v12, v6, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    if-eq v12, v8, :cond_c

    iput v8, v6, Lcom/android/server/display/DisplayDevice;->mCurrentFlags:I

    iget-object v12, v6, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v12, v8}, Landroid/view/SurfaceControl$Transaction;->setDisplayFlags(Landroid/os/IBinder;I)Landroid/view/SurfaceControl$Transaction;

    :cond_c
    iget-object v8, v7, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v6, v8, :cond_d

    iget-object v8, v7, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    iget v8, v7, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_6

    :cond_d
    new-instance v8, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v8}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    invoke-virtual {v6, v9}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    :goto_6
    iget-boolean v8, v7, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    iget-boolean v8, v7, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v6, v8}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    invoke-virtual {v7}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v12

    iget-object v14, v7, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    const/16 v16, 0x2

    iget v1, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v14, v9, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_f

    iget-boolean v2, v7, Lcom/android/server/display/LogicalDisplay;->mAlwaysRotateDisplayDeviceEnabled:Z

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    move v2, v9

    goto :goto_8

    :cond_f
    :goto_7
    iget v2, v8, Landroid/view/DisplayInfo;->rotation:I

    :goto_8
    const/high16 v14, 0x2000000

    and-int v18, v1, v14

    if-nez v18, :cond_10

    move/from16 v18, v14

    iget v14, v8, Landroid/view/DisplayInfo;->flags:I

    and-int v14, v14, v18

    if-eqz v14, :cond_11

    goto :goto_9

    :cond_10
    move/from16 v18, v14

    :goto_9
    move v2, v9

    :cond_11
    and-int v1, v1, p0

    if-eqz v1, :cond_12

    iget v1, v8, Landroid/view/DisplayInfo;->flags:I

    and-int v1, v1, v18

    if-eqz v1, :cond_12

    move-object v1, v6

    check-cast v1, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;

    iget v2, v1, Lcom/android/server/display/WifiDisplayAdapter$WifiDisplayDevice;->mRotationForHiddenDisplay:I

    :cond_12
    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x4

    const/4 v1, 0x3

    const/4 v14, 0x1

    if-eq v2, v14, :cond_14

    if-ne v2, v1, :cond_13

    goto :goto_a

    :cond_13
    move v14, v9

    goto :goto_b

    :cond_14
    :goto_a
    const/4 v14, 0x1

    :goto_b
    if-eqz v14, :cond_15

    iget v9, v12, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_c

    :cond_15
    iget v9, v12, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_c
    if-eqz v14, :cond_16

    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_d
    move/from16 v19, v1

    goto :goto_e

    :cond_16
    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_d

    :goto_e
    invoke-static {v12}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v2, :cond_1a

    move/from16 v20, v9

    const/4 v9, 0x1

    if-eq v2, v9, :cond_19

    move/from16 v9, v16

    if-eq v2, v9, :cond_18

    const/4 v9, 0x3

    if-ne v2, v9, :cond_17

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v14

    iget v14, v1, Landroid/graphics/Rect;->left:I

    move/from16 v22, v10

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v23, v3

    iget v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v9, v14, v10, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown rotation: "

    invoke-static {v2, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object/from16 v23, v3

    move/from16 v22, v10

    move/from16 v21, v14

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Rect;->left:I

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v9, v10, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    :cond_19
    move-object/from16 v23, v3

    move/from16 v22, v10

    move/from16 v21, v14

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v14, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v9, v10, v14}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_f

    :cond_1a
    move-object/from16 v23, v3

    move/from16 v20, v9

    move/from16 v22, v10

    move/from16 v21, v14

    :goto_f
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v9

    sub-int v9, v20, v3

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v10

    sub-int v19, v19, v3

    iget v3, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-boolean v14, v7, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropyCorrectionEnabled:Z

    if-eqz v14, :cond_1f

    iget v14, v12, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    move/from16 v20, v9

    const/4 v9, 0x2

    if-ne v14, v9, :cond_1e

    iget v9, v12, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    const/4 v14, 0x0

    cmpl-float v24, v9, v14

    if-lez v24, :cond_1e

    move/from16 v24, v14

    iget v14, v12, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v24, v14, v24

    if-lez v24, :cond_1e

    const v24, 0x3f833333    # 1.025f

    mul-float v25, v14, v24

    cmpl-float v25, v9, v25

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    if-lez v25, :cond_1c

    div-float/2addr v14, v9

    if-eqz v21, :cond_1b

    int-to-float v3, v3

    mul-float/2addr v3, v14

    move-object/from16 v25, v4

    goto :goto_11

    :cond_1b
    move-object/from16 v25, v4

    int-to-float v4, v10

    mul-float/2addr v4, v14

    goto :goto_10

    :cond_1c
    move-object/from16 v25, v4

    mul-float v24, v24, v9

    cmpg-float v4, v24, v14

    if-gez v4, :cond_20

    div-float/2addr v9, v14

    if-eqz v21, :cond_1d

    int-to-float v4, v10

    mul-float/2addr v4, v9

    :goto_10
    float-to-double v9, v4

    add-double v9, v9, v26

    double-to-int v10, v9

    goto :goto_12

    :cond_1d
    int-to-float v3, v3

    mul-float/2addr v3, v9

    :goto_11
    float-to-double v3, v3

    add-double v3, v3, v26

    double-to-int v3, v3

    goto :goto_12

    :cond_1e
    move-object/from16 v25, v4

    goto :goto_12

    :cond_1f
    move-object/from16 v25, v4

    move/from16 v20, v9

    :cond_20
    :goto_12
    iget v4, v8, Landroid/view/DisplayInfo;->flags:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v4, v9

    if-nez v4, :cond_23

    iget-boolean v4, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v4, :cond_21

    goto :goto_13

    :cond_21
    mul-int v9, v20, v10

    mul-int v4, v19, v3

    if-ge v9, v4, :cond_22

    div-int v10, v9, v3

    move/from16 v3, v20

    goto :goto_13

    :cond_22
    div-int v3, v4, v10

    move/from16 v10, v19

    :cond_23
    :goto_13
    sub-int v19, v19, v10

    const/16 v16, 0x2

    div-int/lit8 v4, v19, 0x2

    sub-int v9, v20, v3

    div-int/lit8 v9, v9, 0x2

    iget-object v14, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int/2addr v3, v9

    add-int/2addr v10, v4

    invoke-virtual {v14, v9, v4, v3, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Rect;->offset(II)V

    if-nez v2, :cond_24

    iget-object v1, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v3, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v4, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_14

    :cond_24
    const/4 v14, 0x1

    if-ne v2, v14, :cond_25

    iget-object v1, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v3, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v4, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_14

    :cond_25
    const/4 v9, 0x2

    if-ne v2, v9, :cond_26

    iget-object v1, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v3, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v3, v3

    iget v4, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_14

    :cond_26
    iget-object v1, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v3, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v3, v3

    iget v4, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    :goto_14
    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int v1, v1, v18

    if-eqz v1, :cond_27

    iget-object v1, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v3, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v8, 0x0

    invoke-virtual {v1, v8, v8, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_15

    :cond_27
    const/4 v8, 0x0

    :goto_15
    iget-object v1, v7, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v3, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/Point;->set(II)V

    iget-boolean v1, v7, Lcom/android/server/display/LogicalDisplay;->mSyncedResolutionSwitchEnabled:Z

    if-nez v1, :cond_28

    iget v1, v12, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_29

    :cond_28
    invoke-virtual {v6, v0}, Lcom/android/server/display/DisplayDevice;->configureDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;)V

    :cond_29
    iget-object v1, v7, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    if-ne v4, v2, :cond_2a

    iget-object v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_2a

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    iget-object v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_2a

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    :cond_2a
    iput v2, v6, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iget-object v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2b

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    :cond_2b
    iget-object v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2c

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    :cond_2c
    iget-object v4, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "setProjectionLocked, orientation="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", layerStackRect="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", displayRect="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v13, v15}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v6, Lcom/android/server/display/DisplayDevice;->mDisplayToken:Landroid/os/IBinder;

    invoke-virtual {v0, v4, v2, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setDisplayProjection(Landroid/os/IBinder;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_2d
    invoke-virtual {v6, v0}, Lcom/android/server/display/DisplayDevice;->configureSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    invoke-static/range {v25 .. v25}, Lcom/android/server/display/DisplayManagerService;->getViewportType(Lcom/android/server/display/DisplayDeviceInfo;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v1, v25

    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    const/4 v14, 0x1

    if-eq v0, v14, :cond_2e

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2e

    const/4 v9, 0x3

    if-eq v0, v9, :cond_2e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot call getViewportByTypeLocked for type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/hardware/display/DisplayViewport;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/server/power/Slog;->$r8$clinit:I

    invoke-static {v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    goto :goto_17

    :cond_2e
    move-object/from16 v3, v23

    iget-object v4, v3, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v9, v8

    :goto_16
    if-ge v9, v4, :cond_30

    iget-object v5, v3, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayViewport;

    iget v7, v5, Landroid/hardware/display/DisplayViewport;->type:I

    if-ne v7, v0, :cond_2f

    iget-object v7, v5, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2f

    goto :goto_17

    :cond_2f
    const/16 v17, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_30
    new-instance v5, Landroid/hardware/display/DisplayViewport;

    invoke-direct {v5}, Landroid/hardware/display/DisplayViewport;-><init>()V

    iput v0, v5, Landroid/hardware/display/DisplayViewport;->type:I

    iput-object v2, v5, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    iget-object v0, v3, Lcom/android/server/display/DisplayManagerService;->mViewports:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17
    iget v0, v6, Lcom/android/server/display/DisplayDevice;->mCurrentOrientation:I

    iput v0, v5, Landroid/hardware/display/DisplayViewport;->orientation:I

    iget-object v0, v6, Lcom/android/server/display/DisplayDevice;->mCurrentLayerStackRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_31

    iget-object v2, v5, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_18

    :cond_31
    iget-object v0, v5, Landroid/hardware/display/DisplayViewport;->logicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_18
    iget-object v0, v6, Lcom/android/server/display/DisplayDevice;->mCurrentDisplayRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_32

    iget-object v2, v5, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_19

    :cond_32
    iget-object v0, v5, Landroid/hardware/display/DisplayViewport;->physicalFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_19
    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->isRotatedLocked()Z

    move-result v0

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    if-eqz v0, :cond_33

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_1a

    :cond_33
    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_1a
    iput v3, v5, Landroid/hardware/display/DisplayViewport;->deviceWidth:I

    if-eqz v0, :cond_34

    iget v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_1b

    :cond_34
    iget v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_1b
    iput v0, v5, Landroid/hardware/display/DisplayViewport;->deviceHeight:I

    iget-object v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, v5, Landroid/hardware/display/DisplayViewport;->uniqueId:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    instance-of v2, v0, Landroid/view/DisplayAddress$Physical;

    if-eqz v2, :cond_35

    check-cast v0, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v5, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    :goto_1c
    const/4 v14, 0x1

    goto :goto_1d

    :cond_35
    const/4 v0, 0x0

    iput-object v0, v5, Landroid/hardware/display/DisplayViewport;->physicalPort:Ljava/lang/Integer;

    goto :goto_1c

    :goto_1d
    iput-boolean v14, v5, Landroid/hardware/display/DisplayViewport;->valid:Z

    move/from16 v0, v22

    iput v0, v5, Landroid/hardware/display/DisplayViewport;->displayId:I

    iget v0, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    invoke-static {v0}, Landroid/view/Display;->isActiveState(I)Z

    move-result v0

    iput-boolean v0, v5, Landroid/hardware/display/DisplayViewport;->isActive:Z

    goto :goto_1f

    :cond_36
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Missing logical display to use for physical display device: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    :goto_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
