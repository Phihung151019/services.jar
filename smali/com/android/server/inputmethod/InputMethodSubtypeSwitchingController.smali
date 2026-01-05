.class public final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

.field public mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;


# direct methods
.method public static filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v4

    if-ne v4, p1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getSortedInputMethodAndSubtypeList(ZZZLandroid/content/Context;Lcom/android/server/inputmethod/InputMethodSettings;)Ljava/util/List;
    .locals 19

    move-object/from16 v0, p4

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getUserId()I

    move-result v1

    iget v2, v0, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move-object/from16 v1, p3

    goto :goto_0

    :cond_0
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    :goto_0
    sget-object v2, Lcom/android/server/inputmethod/SystemLocaleWrapper;->sSystemLocale:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/LocaleList;

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "InputMethodSubtypeSwitchingController"

    const-string v1, "Enabled input method list is empty."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p0, :cond_2

    move v13, v3

    goto :goto_1

    :cond_2
    move/from16 v13, p0

    :goto_1
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    move v4, v3

    :goto_2
    if-ge v4, v15, :cond_b

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz p2, :cond_4

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->shouldShowInInputMethodPicker()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move/from16 v17, v4

    goto/16 :goto_a

    :cond_4
    const/4 v5, 0x1

    invoke-virtual {v0, v8, v5}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v7

    move v9, v3

    :goto_4
    if-ge v9, v7, :cond_3

    invoke-virtual {v8, v9}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeAt(I)Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    if-nez v13, :cond_7

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v16

    if-nez v16, :cond_6

    goto :goto_5

    :cond_6
    move/from16 v17, v4

    move-object v0, v6

    move v3, v7

    goto :goto_9

    :cond_7
    :goto_5
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v16

    if-eqz v16, :cond_8

    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v1, v3, v0}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_6
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->overridesImplicitlyEnabledSubtype()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    :goto_7
    move/from16 v17, v4

    goto :goto_8

    :cond_9
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v1, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLayoutDisplayName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_7

    :goto_8
    new-instance v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v6

    move-object v6, v0

    move-object/from16 v0, v18

    move/from16 v18, v7

    move-object v7, v3

    move/from16 v3, v18

    invoke-direct/range {v4 .. v11}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_9
    add-int/lit8 v9, v9, 0x1

    move-object v6, v0

    move v7, v3

    move/from16 v4, v17

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p4

    goto :goto_4

    :cond_a
    move/from16 v17, v4

    new-instance v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/inputmethod/InputMethodInfo;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v4, v17, 0x1

    move-object/from16 v0, p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_b
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v14
.end method


# virtual methods
.method public final getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .locals 6

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodInfo;->supportsSwitchingToNextInputMethod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p3

    if-gez p3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_9

    add-int v3, p3, v1

    rem-int/2addr v3, v2

    aget v3, v0, v3

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    if-eqz p1, :cond_1

    iget-object v4, v3, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v4}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3

    :cond_2
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v1, :cond_3

    goto :goto_5

    :cond_3
    const/4 v0, -0x1

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/server/inputmethod/SubtypeUtils;->getSubtypeIndexFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p3

    goto :goto_1

    :cond_4
    move p3, v0

    :goto_1
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_6

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    iget-object v5, v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v5}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeIndex:I

    if-ne v4, p3, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    if-gez v0, :cond_7

    goto :goto_5

    :cond_7
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:Ljava/lang/Object;

    check-cast p3, Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    :goto_4
    if-ge v1, p3, :cond_9

    add-int v2, v0, v1

    rem-int/2addr v2, p3

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    if-eqz p1, :cond_8

    iget-object v3, v2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v3}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    return-object v2

    :cond_9
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->filterImeSubtypeList(Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;->mImeSubtypeList:Ljava/util/List;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-direct {v0, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingAwareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    :cond_0
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;->mRecencyMap:Ljava/lang/Object;

    check-cast p2, Ljava/util/List;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    new-instance p2, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    invoke-direct {p2, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;-><init>(Ljava/util/List;)V

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSwitchingUnawareRotationList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$RotationList;

    :cond_1
    return-void
.end method
