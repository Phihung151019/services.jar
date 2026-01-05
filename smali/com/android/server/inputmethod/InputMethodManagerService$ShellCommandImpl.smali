.class public final Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->onCommandWithSystemIdentity(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final onCommandWithSystemIdentity(Ljava/lang/String;)I
    .locals 20

    move-object/from16 v0, p0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "tracing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    const-string/jumbo v7, "ime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    const/4 v8, -0x2

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    move v9, v3

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v9, "disable"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    :cond_1
    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v9, "reset"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_2
    const-string/jumbo v9, "list"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_3
    const-string/jumbo v9, "help"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_4
    const-string/jumbo v9, "set"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_0

    :cond_5
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_5
    const-string v9, "-h"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    move v9, v1

    goto :goto_1

    :sswitch_6
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    move v9, v2

    goto :goto_1

    :sswitch_7
    const-string/jumbo v9, "tracing"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_0

    :cond_8
    move v9, v5

    goto :goto_1

    :sswitch_8
    const-string/jumbo v9, "enable"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_0

    :cond_9
    move v9, v4

    :goto_1
    packed-switch v9, :pswitch_data_0

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "Unknown command: "

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v3

    :pswitch_0
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, v0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;Z)I

    move-result v0

    return v0

    :pswitch_1
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    const-string v3, "-u"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "--user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v8

    :goto_3
    const-class v6, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v6

    :try_start_0
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    invoke-static {v8, v3, v9}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v3

    array-length v8, v3

    move v9, v4

    :goto_4
    if-ge v9, v8, :cond_11

    aget v10, v3, v9

    invoke-virtual {v1, v10, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)Z

    move-result v11

    if-nez v11, :cond_c

    goto/16 :goto_7

    :cond_c
    iget-object v11, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v11, v10}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    if-eqz v11, :cond_d

    const-string/jumbo v12, "android.os.usertype.system.HEADLESS"

    iget-object v11, v11, Landroid/content/pm/UserInfo;->userType:Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_9

    :cond_d
    invoke-static {v10}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v11

    invoke-virtual {v1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v12

    invoke-static {v4, v12, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->setImeVisibilityOnFocusedWindowClient(ZLcom/android/server/inputmethod/UserData;Landroid/view/inputmethod/ImeTracker$Token;)Z

    iget-object v12, v12, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    invoke-virtual {v12}, Lcom/android/server/inputmethod/InputMethodBindingController;->unbindCurrentMethod()V

    invoke-virtual {v11, v7}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v13, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v14, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mMethodList:Ljava/util/List;

    invoke-static {v13, v14, v4}, Lcom/android/server/inputmethod/InputMethodInfoUtils;->getDefaultEnabledImes(Landroid/content/Context;Ljava/util/List;Z)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    move v15, v4

    :goto_5
    if-ge v15, v14, :cond_e

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/2addr v15, v5

    check-cast v16, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual/range {v16 .. v16}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v10, v7, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    const/4 v7, 0x0

    goto :goto_5

    :cond_e
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v12, v4

    :goto_6
    if-ge v12, v7, :cond_f

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/2addr v12, v5

    check-cast v14, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v14}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v10, v14, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodEnabledLocked(ILjava/lang/String;Z)Z

    goto :goto_6

    :cond_f
    invoke-virtual {v1, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->chooseNewDefaultIMELocked(I)Z

    move-result v7

    if-nez v7, :cond_10

    const/4 v7, 0x0

    invoke-virtual {v1, v10, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->resetSelectedInputMethodAndSubtypeLocked(ILjava/lang/String;)V

    :cond_10
    invoke-virtual {v1, v10, v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateInputMethodsFromSettingsLocked(IZ)V

    iget-object v7, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget v12, v11, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    invoke-static {v7, v12}, Lcom/android/server/inputmethod/InputMethodManagerService;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/android/server/inputmethod/InputMethodUtils;->setNonSelectedSystemImesDisabledUntilUsed(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    invoke-virtual {v11}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v12}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Reset current and enabled IMEs for user #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  Selected: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v7, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;

    invoke-direct {v7, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda26;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_7
    add-int/2addr v9, v5

    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_11
    if-eqz v2, :cond_12

    :try_start_2
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_b

    :cond_12
    :goto_8
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v4

    :goto_9
    if-eqz v2, :cond_13

    :try_start_3
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_13
    :goto_a
    throw v1

    :goto_b
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :pswitch_2
    iget-object v6, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean v7, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v7, v4

    move v9, v7

    :goto_c
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1b

    const-class v11, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v11

    :try_start_5
    iget v1, v6, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    invoke-static {v8, v1, v2}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v1

    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    :try_start_6
    array-length v0, v1

    move v3, v4

    :goto_d
    if-ge v3, v0, :cond_18

    aget v8, v1, v3

    const/16 v10, 0x7d0

    if-eqz v7, :cond_14

    invoke-virtual {v6, v8, v4, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getInputMethodListInternal(III)Ljava/util/List;

    move-result-object v10

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object v1, v0

    goto :goto_10

    :cond_14
    invoke-virtual {v6, v8, v10}, Lcom/android/server/inputmethod/InputMethodManagerService;->getEnabledInputMethodListInternal(II)Ljava/util/List;

    move-result-object v10

    :goto_e
    array-length v11, v1

    if-le v11, v5, :cond_15

    const-string/jumbo v11, "User #"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v9, :cond_16

    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_16
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, ":"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v11, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda27;

    invoke-direct {v11, v2}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda27;-><init>(Ljava/io/PrintWriter;)V

    const-string v12, "  "

    invoke-virtual {v10, v11, v12}, Landroid/view/inputmethod/InputMethodInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_f

    :cond_17
    add-int/2addr v3, v5

    goto :goto_d

    :cond_18
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    return v4

    :cond_19
    move/from16 v17, v4

    goto/16 :goto_1c

    :goto_10
    if-eqz v2, :cond_1a

    :try_start_7
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_11

    :catchall_4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1a
    :goto_11
    throw v1

    :catchall_5
    move-exception v0

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :cond_1b
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :goto_12
    move v10, v3

    goto :goto_13

    :sswitch_9
    const-string v11, "--user"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto :goto_12

    :cond_1c
    move v10, v1

    goto :goto_13

    :sswitch_a
    const-string v11, "-u"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto :goto_12

    :cond_1d
    move v10, v2

    goto :goto_13

    :sswitch_b
    const-string v11, "-s"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    goto :goto_12

    :cond_1e
    move v10, v5

    goto :goto_13

    :sswitch_c
    const-string v11, "-a"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    goto :goto_12

    :cond_1f
    move v10, v4

    :goto_13
    packed-switch v10, :pswitch_data_1

    goto/16 :goto_c

    :pswitch_3
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_c

    :pswitch_4
    move v9, v5

    goto/16 :goto_c

    :pswitch_5
    move v7, v5

    goto/16 :goto_c

    :pswitch_6
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    sget-boolean v2, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_14
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_20

    goto :goto_15

    :cond_20
    const-string v6, "-u"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    const-string v6, "--user"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_14

    :cond_21
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v8

    :goto_15
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v6

    :try_start_9
    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    const-class v9, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    :try_start_b
    iget v10, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurrentImeUserId:I

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v11

    invoke-static {v8, v10, v11}, Lcom/android/server/inputmethod/InputMethodUtils;->resolveUserId(IILjava/io/PrintWriter;)[I

    move-result-object v8

    array-length v10, v8

    move v11, v4

    move v12, v11

    :goto_16
    if-ge v11, v10, :cond_28

    aget v13, v8, v11

    invoke-virtual {v1, v13, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->userHasDebugPriv(ILcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)Z

    move-result v14

    if-nez v14, :cond_22

    move-object/from16 v19, v1

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    goto/16 :goto_1a

    :cond_22
    invoke-static {v13}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/server/inputmethod/InputMethodSettings;->getEnabledInputMethodListWithFilter(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v14

    new-instance v15, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;

    invoke-direct {v15, v2, v5}, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda25;-><init>(Ljava/lang/String;I)V

    invoke-static {v14, v15}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result v14

    if-nez v14, :cond_23

    move v14, v4

    goto :goto_17

    :cond_23
    invoke-virtual {v1, v3, v4, v13, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(IIILjava/lang/String;)V

    move v14, v5

    :goto_17
    xor-int/lit8 v15, v14, 0x1

    if-nez v14, :cond_24

    const-string/jumbo v14, "Unknown input method "

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, " cannot be selected for user #"

    invoke-virtual {v7, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7, v13}, Ljava/io/PrintWriter;->println(I)V

    const-string v14, "InputMethodManagerService"

    move/from16 v16, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    const-string v4, "\"ime set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" for user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed due to its unrecognized IME ID."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v19, v1

    move/from16 v18, v5

    goto/16 :goto_19

    :catchall_6
    move-exception v0

    goto/16 :goto_1d

    :cond_24
    move/from16 v16, v3

    move/from16 v17, v4

    const-string v3, "Input method "

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " selected for user #"

    invoke-virtual {v6, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->println(I)V

    invoke-static {v13}, Lcom/android/server/inputmethod/InputMethodSettingsRepository;->get(I)Lcom/android/server/inputmethod/InputMethodSettings;

    move-result-object v3

    invoke-virtual {v1, v13}, Lcom/android/server/inputmethod/InputMethodManagerService;->getUserData(I)Lcom/android/server/inputmethod/UserData;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/inputmethod/UserData;->mBindingController:Lcom/android/server/inputmethod/InputMethodBindingController;

    iget v4, v4, Lcom/android/server/inputmethod/InputMethodBindingController;->mDeviceIdToShowIme:I

    if-nez v4, :cond_25

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v13

    move/from16 v18, v5

    const/4 v5, 0x0

    goto :goto_18

    :cond_25
    iget v13, v3, Lcom/android/server/inputmethod/InputMethodSettings;->mUserId:I

    const-string/jumbo v14, "default_device_input_method"

    move/from16 v18, v5

    const/4 v5, 0x0

    invoke-static {v14, v5, v13}, Lcom/android/server/inputmethod/SecureSettingsWrapper;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    :goto_18
    invoke-static {v13, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_27

    const-string v14, "InputMethodManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v1

    const-string v1, "DEFAULT_INPUT_METHOD="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not updated. Fixing it up to "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " See b/354782333."

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_26

    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedInputMethod(Ljava/lang/String;)V

    goto :goto_19

    :cond_26
    invoke-virtual {v3, v2}, Lcom/android/server/inputmethod/InputMethodSettings;->putSelectedDefaultDeviceInputMethod(Ljava/lang/String;)V

    goto :goto_19

    :cond_27
    move-object/from16 v19, v1

    :goto_19
    or-int/2addr v12, v15

    :goto_1a
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v1, v19

    goto/16 :goto_16

    :cond_28
    move/from16 v16, v3

    move/from16 v17, v4

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-eqz v7, :cond_29

    :try_start_c
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_1b

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto :goto_1f

    :cond_29
    :goto_1b
    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V

    :cond_2a
    if-eqz v12, :cond_2b

    return v16

    :cond_2b
    :goto_1c
    return v17

    :goto_1d
    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    :catchall_8
    move-exception v0

    move-object v1, v0

    if-eqz v7, :cond_2c

    :try_start_f
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    goto :goto_1e

    :catchall_9
    move-exception v0

    :try_start_10
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2c
    :goto_1e
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :goto_1f
    if-eqz v6, :cond_2d

    :try_start_11
    invoke-virtual {v6}, Ljava/io/PrintWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    goto :goto_20

    :catchall_a
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2d
    :goto_20
    throw v1

    :pswitch_7
    move/from16 v17, v4

    const-string v1, "--user <USER_ID>: Specify which user to enable."

    const-string v2, " Assumes the current user if not specified."

    new-instance v3, Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v4, "  "

    const/16 v5, 0x64

    invoke-direct {v3, v0, v4, v5}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    :try_start_12
    const-string/jumbo v0, "ime <command>:"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "list [-a] [-s]"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "prints all enabled input methods."

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "-a: see all input methods"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "-s: only a single summary line of each"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "enable [--user <USER_ID>] <ID>"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "allows the given input method ID to be used."

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "disable [--user <USER_ID>] <ID>"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "disallows the given input method ID to be used."

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "--user <USER_ID>: Specify which user to disable."

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "set [--user <USER_ID>] <ID>"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "switches to the given input method ID."

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "reset [--user <USER_ID>]"

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string/jumbo v0, "reset currently selected/enabled IMEs to the default ones as if the device is initially booted with the current locale."

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v0, "--user <USER_ID>: Specify which user to reset."

    invoke-virtual {v3, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->close()V

    return v17

    :catchall_b
    move-exception v0

    move-object v1, v0

    :try_start_13
    invoke-virtual {v3}, Landroid/util/IndentingPrintWriter;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    goto :goto_21

    :catchall_c
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1

    :pswitch_8
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)I

    move-result v0

    return v0

    :pswitch_9
    move/from16 v18, v5

    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    move/from16 v2, v18

    invoke-static {v1, v0, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandEnableDisableInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;Z)I

    move-result v0

    return v0

    :cond_2e
    iget-object v1, v0, Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mhandleShellCommandTraceInputMethod(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ShellCommandImpl;)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x4d6ada7d -> :sswitch_8
        -0x3f9f2f3e -> :sswitch_7
        0x0 -> :sswitch_6
        0x5db -> :sswitch_5
        0x1bc62 -> :sswitch_4
        0x30cf41 -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x639e22e8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x5d4 -> :sswitch_c
        0x5e6 -> :sswitch_b
        0x5e8 -> :sswitch_a
        0x4f7b216b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 1

    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    :try_start_0
    const-string v0, "InputMethodManagerService commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Prints this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dump [options]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Synonym of dumpsys."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ime <command> [options]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Manipulate IMEs.  Run \"ime help\" for details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  tracing <command>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    start: Start tracing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    stop : Stop tracing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    help : Show help."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V

    return-void

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method
