.class public final Lcom/android/server/inputmethod/InputMethodMenuController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCurrentImeUserId:I

.field public mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field public mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

.field public mImList:Ljava/util/List;

.field public mIms:[Landroid/view/inputmethod/InputMethodInfo;

.field public final mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public mShowImeWithHardKeyboard:Z

.field public mSubtypeIndices:[I

.field public mSwitchInSelectDialogView:Landroid/view/View;

.field public mSwitchingDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    new-instance v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p1, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object v0, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mSemInputMethodMenuListener:Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda3;

    iput-object v2, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    return-void
.end method


# virtual methods
.method public final hideInputMethodMenuLocked(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    iget-object p1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "imeSwitcherHidden"

    :try_start_0
    iget v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1, v0}, Lcom/android/internal/inputmethod/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    :cond_2
    return-void
.end method

.method public final showInputMethodMenuLocked(Ljava/lang/String;IIILjava/util/List;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    iget-object v4, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v5

    iput v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mCurrentImeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodMenuController;->hideInputMethodMenuLocked(I)V

    const/4 v6, -0x1

    move/from16 v7, p3

    if-ne v7, v6, :cond_0

    iget-object v5, v5, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v5}, Lcom/android/server/inputmethod/InputMethodBindingController;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodBindingController;->mSelectedMethodId:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodMap:Lcom/android/server/inputmethod/InputMethodMap;

    invoke-virtual {v7, v5}, Lcom/android/server/inputmethod/InputMethodMap;->get(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v5

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result v5

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    iget-object v7, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSemImcUtil:Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v8

    new-instance v9, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    new-instance v10, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v11, v3

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    iput-object v3, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mImList:Ljava/util/List;

    new-array v10, v8, [Landroid/view/inputmethod/InputMethodInfo;

    iput-object v10, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    new-array v10, v8, [I

    iput-object v10, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    const/4 v10, 0x0

    move v13, v6

    move v12, v10

    :goto_1
    const-string v14, "InputMethodMenuController"

    if-ge v12, v8, :cond_7

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    if-nez v15, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "showInputMethodMenu: index="

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", imList="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    iget-object v14, v15, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    aput-object v14, v9, v12

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    iget v15, v15, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    aput v15, v9, v12

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSubtypeIndices:[I

    aget v9, v9, v12

    if-eq v9, v6, :cond_3

    if-ne v5, v6, :cond_2

    if-eqz v9, :cond_3

    :cond_2
    if-ne v9, v5, :cond_4

    :cond_3
    move v13, v12

    :cond_4
    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mIms:[Landroid/view/inputmethod/InputMethodInfo;

    aget-object v9, v9, v12

    if-nez v9, :cond_5

    move v9, v10

    goto :goto_2

    :cond_5
    const-string/jumbo v14, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_2
    if-eqz v9, :cond_6

    move v13, v12

    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    if-ne v13, v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Switching menu shown with no item selected, IME id: "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtype index: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    if-nez v1, :cond_9

    new-instance v1, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    invoke-direct {v1}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;-><init>()V

    iput-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    :cond_9
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogWindowContext:Lcom/android/server/inputmethod/InputMethodDialogWindowContext;

    move/from16 v5, p2

    invoke-virtual {v1, v5}, Lcom/android/server/inputmethod/InputMethodDialogWindowContext;->get(I)Landroid/content/Context;

    move-result-object v1

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v6, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0, v2}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;I)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/internal/R$styleable;->DialogPreference:[I

    const v8, 0x101005d

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v8, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v11}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    const-class v6, Landroid/view/LayoutInflater;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v11, 0x10901e4

    invoke-virtual {v6, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v12, v11}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v11, 0x10901e3

    invoke-virtual {v6, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    iget-object v9, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget v11, v0, Lcom/android/server/inputmethod/InputMethodMenuController;->mCurrentImeUserId:I

    const v12, 0x102036c

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    iget-object v14, v7, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v14}, Lcom/android/server/inputmethod/InputMethodManagerService;->isAccessoryKeyboard()I

    move-result v15

    const/16 v16, 0x8

    if-eqz v15, :cond_a

    move v15, v10

    goto :goto_4

    :cond_a
    move/from16 v15, v16

    :goto_4
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    const v15, 0x102036d

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Switch;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v10

    invoke-virtual {v15, v10}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v10

    invoke-virtual {v15, v10}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-virtual {v15}, Landroid/widget/Switch;->semSetSamsungBasicInteraction()V

    new-instance v10, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda3;

    move-object/from16 p2, v1

    const/4 v1, 0x0

    invoke-direct {v10, v7, v8, v1}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;Lcom/android/server/inputmethod/InputMethodSettings;I)V

    invoke-virtual {v15, v10}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v1, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;

    const/4 v10, 0x0

    invoke-direct {v1, v15, v10}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;-><init>(Landroid/widget/Switch;I)V

    invoke-virtual {v12, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x1020604

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v10, v7, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardSecure(I)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_5

    :cond_b
    const/4 v10, 0x0

    :goto_5
    invoke-static {v5}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    move-result-object v11

    const-string/jumbo v12, "com.android.settings"

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v15, "key_show_keyboard_button"

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    move/from16 v18, v10

    if-eqz v11, :cond_c

    const-string/jumbo v10, "hide"

    invoke-virtual {v11, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    :cond_c
    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_d

    if-nez v18, :cond_d

    const/4 v10, 0x1

    goto :goto_6

    :cond_d
    const/4 v10, 0x0

    :goto_6
    if-eqz v10, :cond_e

    const/4 v11, 0x0

    goto :goto_7

    :cond_e
    move/from16 v11, v16

    :goto_7
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    const v11, 0x10203ce

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    move/from16 v16, v10

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move-object/from16 v18, v4

    const v4, 0x1040f88

    invoke-virtual {v10, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v10, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v0, 0x1040edf

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, "%s"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const v3, 0x10604e9

    move-object/from16 v19, v5

    const/4 v5, 0x0

    invoke-virtual {v10, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    move/from16 v20, v13

    const v13, 0x1080ce9

    invoke-virtual {v10, v13, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v13, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v10}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v5, v0, 0x2

    const/16 v10, 0x11

    invoke-virtual {v2, v3, v0, v5, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->semSetHoverPopupType(I)V

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->semGetHoverPopup(Z)Lcom/samsung/android/widget/SemHoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_f

    const/16 v0, 0x3231

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    :cond_f
    const v0, 0x1020605

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->semSetSamsungBasicInteraction()V

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/SemEnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/samsung/android/knox/SemEnterpriseDeviceManager;->getApplicationRestrictions(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v16, :cond_10

    if-eqz v2, :cond_10

    const-string/jumbo v3, "grayout"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    const/16 v17, 0x1

    :goto_8
    const/4 v2, 0x1

    goto :goto_9

    :cond_10
    move/from16 v17, v13

    goto :goto_8

    :goto_9
    xor-int/lit8 v3, v17, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    if-eqz v16, :cond_11

    invoke-virtual {v8}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowKeyboardButton()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    move v10, v13

    :goto_a
    invoke-virtual {v0, v10}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda3;

    const/4 v3, 0x1

    invoke-direct {v2, v7, v8, v3}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil;Lcom/android/server/inputmethod/InputMethodSettings;I)V

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v2, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v3}, Lcom/android/server/inputmethod/SemInputMethodMenuControllerUtil$$ExternalSyntheticLambda4;-><init>(Landroid/widget/Switch;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mSamsungIMMSHWKeyboard:Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;

    iget v0, v0, Lcom/android/server/inputmethod/SamsungIMMSHWKeyboard;->keyboardState:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_12

    goto :goto_b

    :cond_12
    iget-object v0, v14, Lcom/android/server/inputmethod/InputMethodManagerService;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    goto :goto_b

    :cond_13
    if-eqz v16, :cond_14

    :goto_b
    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_14
    new-instance v0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;

    move-object/from16 v3, p5

    move-object/from16 v1, v19

    move/from16 v13, v20

    invoke-direct {v0, v13, v1, v3}, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;-><init>(ILandroid/content/Context;Ljava/util/List;)V

    move/from16 v2, p4

    iput v2, v0, Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;->mUserId:I

    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;

    move-object/from16 v3, p0

    invoke-direct {v1, v3, v0, v2}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;Lcom/android/server/inputmethod/InputMethodMenuController$ImeSubtypeListAdapter;I)V

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4, v0, v13, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;

    invoke-direct {v1, v3}, Lcom/android/server/inputmethod/InputMethodMenuController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodMenuController;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->semSetBackgroundBlurEnabled(Z)V

    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    const/16 v5, 0x7dc

    invoke-virtual {v0, v5}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setHideOverlayWindows(Z)V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getWindowContextToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string/jumbo v1, "Select input method"

    invoke-virtual {v4, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateSystemUiLocked(I)V

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->sendOnNavButtonFlagsChangedLocked(Lcom/android/server/inputmethod/UserData;)V

    iget-object v1, v3, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const-string/jumbo v1, "imeSwitcherShown"

    :try_start_0
    iget v2, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/inputmethod/UserData;->mEnabledSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;->mSession:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v0, :cond_15

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Lcom/android/internal/inputmethod/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_15
    return-void
.end method

.method public final updateKeyboardFromSettingsLocked(I)V
    .locals 1

    invoke-static {p1}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/inputmethod/InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchingDialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mSwitchInSelectDialogView:Landroid/view/View;

    const v0, 0x102036d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/InputMethodMenuController;->mShowImeWithHardKeyboard:Z

    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_0
    return-void
.end method
