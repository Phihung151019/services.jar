.class public Lcom/android/server/locales/LocaleManagerService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field public final mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field public final mWriteLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    invoke-direct {v0, p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v6, Landroid/os/HandlerThread;

    const-string/jumbo v0, "LocaleManagerService"

    const/16 v1, 0xa

    invoke-direct {v6, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/locales/SystemAppUpdateTracker;

    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v5, "locale_manager_service_updated_system_apps.xml"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, p1, p0, v1}, Lcom/android/server/locales/SystemAppUpdateTracker;-><init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/util/AtomicFile;)V

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/locales/LocaleManagerService$1;

    invoke-direct {v2, v0}, Lcom/android/server/locales/LocaleManagerService$1;-><init>(Lcom/android/server/locales/SystemAppUpdateTracker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/android/server/locales/LocaleManagerBackupHelper;-><init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Ljava/time/Clock;Landroid/os/HandlerThread;Landroid/util/SparseArray;Ljava/io/File;Landroid/content/SharedPreferences;)V

    iput-object v1, v3, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    new-instance p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    iput-object v1, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    iput-object v3, p0, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    iput-object p0, v3, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v1, 0x1

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Landroid/content/pm/PackageManager;Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/internal/content/PackageMonitor;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    invoke-direct {p1, p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    iput-object p6, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method public static createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;
    .locals 1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string/jumbo p1, "android.intent.extra.LOCALE_LIST"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x11000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getXmlFileNameForUser(ILjava/lang/String;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "locale_configs"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/File;

    const-string v1, ".xml"

    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p0
.end method

.method public static loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "locale-config"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "locale"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    const-string/jumbo v3, "name"

    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Unexpected tag name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "LocaleManagerService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toXmlByteArray(Landroid/os/LocaleList;)[B
    .locals 9

    const-string/jumbo v0, "locale"

    const-string/jumbo v1, "locale-config"

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object p0

    const-string v6, ","

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p0, :cond_0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Ljava/lang/String;

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v8, "name"

    invoke-interface {v4, v2, v8, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    return-object v2
.end method


# virtual methods
.method public final getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 8

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, "getApplicationLocales"

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v0, "i18n.feature.allow_ime_query_app_locale"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "LocaleManagerService"

    const-string/jumbo v1, "inValid input method"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.READ_APP_SPECIFIC_LOCALES"

    const-string/jumbo v2, "getApplicationLocales"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(ILjava/lang/String;)Landroid/os/LocaleList;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public final getApplicationLocalesUnchecked(ILjava/lang/String;)Landroid/os/LocaleList;
    .locals 0

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public final getInstallingPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string/jumbo p0, "Package not found "

    const-string/jumbo p1, "LocaleManagerService"

    invoke-static {p0, p2, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;
    .locals 10

    const-string/jumbo v0, "i18n.feature.dynamic_locales_change"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "getOverrideLocaleConfig"

    const/4 v9, 0x0

    move v5, p2

    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/locales/LocaleManagerService;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Landroid/app/LocaleConfig;

    const-string v2, ","

    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object p2

    invoke-direct {v0, p2}, Landroid/app/LocaleConfig;-><init>(Landroid/os/LocaleList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse XML configuration from "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "LocaleManagerService"

    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public final isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z
    .locals 2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    if-gez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "Unknown package "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for user "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "LocaleManagerService"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    iput p0, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    goto :goto_0

    :cond_0
    iput p0, p3, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p3, "Unknown package: "

    invoke-static {p2, p3, p1, v0}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-eqz p3, :cond_3

    iput p0, p3, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_4

    iput p0, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    return p0
.end method

.method public final onStart()V
    .locals 2

    const-string/jumbo v0, "locale"

    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    invoke-direct {v0, p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    const-class p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public final removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V
    .locals 10

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(ILjava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const-string/jumbo v3, "LocaleManagerService"

    if-nez p3, :cond_0

    const-string/jumbo p3, "There is no LocaleConfig, reset app locales"

    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/app/LocaleConfig;->containsLocale(Ljava/util/Locale;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v5, "Missing from the LocaleConfig, reset app locales"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v2, v5

    :goto_2
    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    new-array p3, p3, [Ljava/util/Locale;

    :try_start_0
    new-instance v7, Landroid/os/LocaleList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/util/Locale;

    invoke-direct {v7, p3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iget-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->areLocalesSetFromDelegate(ILjava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v9, p4

    :try_start_1
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_3
    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v5, p1

    goto :goto_3

    :goto_4
    const-string p1, "Could not set locales for "

    invoke-virtual {p1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public final setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    .locals 12

    new-instance v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {v1, v3}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;-><init>(I)V

    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, p5

    iput v0, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    invoke-virtual {p3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->convertEmptyLocales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const-string/jumbo v10, "setApplicationLocales"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v7, p2

    invoke-virtual/range {v4 .. v11}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v4, "setApplicationLocales"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    const/4 p1, 0x4

    :try_start_2
    iput p1, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    throw p0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {p3}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v2

    move/from16 v4, p4

    invoke-virtual {v0, p1, p2, v4, v2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->persistLocalesModificationInfo(Ljava/lang/String;IZZ)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget v4, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    iget-object v5, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    iget v8, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    const/16 v2, 0x19c

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;II)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    iget v4, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    iget-object v5, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    iget v8, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    const/16 v2, 0x19c

    iget v3, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;II)V

    throw p0
.end method

.method public final setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .locals 3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(ILjava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->convertEmptyLocales(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    new-instance v1, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    monitor-enter v1

    :try_start_0
    iput-object p3, v1, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->commit()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "android.intent.action.LOCALE_CHANGED"

    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    invoke-static {v1, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    const-string/jumbo v0, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    move-result-object p1

    iget-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const-string/jumbo v0, "android.permission.READ_APP_SPECIFIC_LOCALES"

    invoke-virtual {p3, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "android"

    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    const/4 p0, 0x1

    iput p0, p4, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    return-void

    :cond_1
    const/4 p0, 0x2

    iput p0, p4, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final setOverrideLocaleConfigUnchecked(Ljava/lang/String;ILandroid/app/LocaleConfig;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    .locals 8

    const-string/jumbo v0, "Unknown package name "

    const-string v1, "Failed to write file "

    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/app/LocaleConfig;->fromContextIgnoringOverride(Landroid/content/Context;)Landroid/app/LocaleConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(ILjava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-nez p3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string/jumbo p3, "LocaleManagerService"

    const-string/jumbo v1, "remove the override LocaleConfig"

    invoke-static {p3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V

    iput-boolean v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    iput v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    monitor-exit v2

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/app/LocaleConfig;->isSameLocaleConfig(Landroid/app/LocaleConfig;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo p0, "LocaleManagerService"

    const-string/jumbo p1, "the same override, ignore it"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    monitor-exit v2

    return-void

    :cond_2
    invoke-virtual {p3}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v6

    :cond_3
    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    move-result v7

    iput v7, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    new-instance v7, Landroid/util/AtomicFile;

    invoke-direct {v7, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v6}, Lcom/android/server/locales/LocaleManagerService;->toXmlByteArray(Landroid/os/LocaleList;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V

    invoke-virtual {p3, v0}, Landroid/app/LocaleConfig;->isSameLocaleConfig(Landroid/app/LocaleConfig;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "LocaleManagerService"

    const-string/jumbo p1, "setOverrideLocaleConfig, same as the app\'s LocaleConfig"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    :cond_4
    iput v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    monitor-exit v2

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    const/4 v3, 0x0

    :goto_1
    const-string/jumbo p1, "LocaleManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_5

    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_5
    const/4 p0, 0x2

    iput p0, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    monitor-exit v2

    goto :goto_2

    :catch_2
    const-string/jumbo p0, "LocaleManagerService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_2
    return-void

    :goto_3
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method
