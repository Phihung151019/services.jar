.class public Lcom/android/server/chimera/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    const-string p2, "ChimeraManagerService"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Lcom/android/server/chimera/ChimeraManagerService;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p2, :cond_3

    iget-object p2, p2, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    iget-object p3, p2, Lcom/android/server/chimera/SettingRepository;->mSystemRepository:Lcom/android/server/chimera/SystemRepository;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p3, "ro.slmk.use_bg_keeping_policy"

    const-string/jumbo p4, "false"

    invoke-static {p3, p4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string/jumbo p4, "true"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "Default,Conservative,Aggressive"

    goto :goto_0

    :cond_0
    const-string p3, "Default,Conservative"

    :goto_0
    iget-boolean p4, p2, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    const-string p5, "3.0"

    if-eqz p4, :cond_2

    iget-boolean p2, p2, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    if-eqz p2, :cond_1

    const-string p2, "Conservative"

    goto :goto_1

    :cond_1
    const-string p2, "Aggressive"

    goto :goto_1

    :cond_2
    const-string p2, "Default"

    goto :goto_1

    :cond_3
    const-string p3, ""

    move-object p2, p3

    move-object p5, p2

    :goto_1
    new-instance p4, Landroid/database/MatrixCursor;

    const-string/jumbo v0, "VERSION"

    const-string/jumbo v1, "SUPPORTED_MODE"

    const-string v2, "CURRENT_MODE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, p5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v3, v1, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {v3, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p4, p0, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p4
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const-string p0, "ChimeraManagerService"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraManagerService;

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/server/chimera/ChimeraManagerService;->mChimeraManager:Lcom/android/server/chimera/ChimeraManager;

    if-eqz p0, :cond_5

    const-string/jumbo p3, "MODE"

    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Aggressive"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    iget-object p4, p0, Lcom/android/server/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/chimera/SettingRepository;

    const/4 v0, 0x1

    const-string/jumbo v1, "PreferenceProvider"

    if-eqz p3, :cond_1

    iget-boolean p2, p4, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p4, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "custom mode = true, false"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4, v0, p1}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    return p1

    :cond_1
    const-string p3, "Conservative"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-boolean p2, p4, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p4, Lcom/android/server/chimera/SettingRepository;->mIsConservativeMode:Z

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string/jumbo p2, "custom mode = true, true"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4, v0, v0}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    return p1

    :cond_3
    iget-boolean p2, p4, Lcom/android/server/chimera/SettingRepository;->mIsCustomMode:Z

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo p2, "custom mode = false, false"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4, p1, p1}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    :cond_5
    :goto_0
    return p1
.end method
