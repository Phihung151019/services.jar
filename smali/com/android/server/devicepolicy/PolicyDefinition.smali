.class public final Lcom/android/server/devicepolicy/PolicyDefinition;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final APP_FUNCTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final AUTO_TIME:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final AUTO_TIME_ZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PERMISSION_GRANT:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final MEMORY_TAGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final POLICY_DEFINITIONS:Ljava/util/Map;

.field public static final SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_BLUETOOTH_MODE:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_BROWSER:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_DESKTOP_SYNC:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_INTERNET_SHARING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_IRDA:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_POP_IMAP_EMAIL:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_STORAGE_CARD:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_TEXT_MESSAGING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_ALLOW_WIFI_POLICY:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final SEM_REQUIRE_STORAGE_CARD_ENCRYPTION:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

.field public static final USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public static final USER_RESTRICTION_FLAGS:Ljava/util/Map;


# instance fields
.field public final mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

.field public final mPolicyFlags:I

.field public final mPolicyKey:Landroid/app/admin/PolicyKey;

.field public final mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

.field public final mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;


# direct methods
.method static constructor <clinit>()V
    .locals 104

    new-instance v2, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v0, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v1, v8}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v12, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v0, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v0, v8}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    new-instance v1, Landroid/app/admin/BooleanPolicyValue;

    invoke-direct {v1, v6}, Landroid/app/admin/BooleanPolicyValue;-><init>(Z)V

    invoke-static {v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    sput-object v12, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v14, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v0, "autoTimezone"

    invoke-direct {v14, v0}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/devicepolicy/TopPriority;

    const-string/jumbo v19, "android.app.role.SYSTEM_SUPERVISION"

    invoke-static/range {v19 .. v19}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v20, "android.app.role.SYSTEM_FINANCED_DEVICE_CONTROLLER"

    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "enterprise"

    invoke-static {v1, v3, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v18, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    const/16 v16, 0x1

    move-object/from16 v17, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    move-object v1, v13

    sput-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME_ZONE:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v14, Landroid/app/admin/PackagePermissionPolicyKey;

    const-string/jumbo v3, "permissionGrant"

    invoke-direct {v14, v3}, Landroid/app/admin/PackagePermissionPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v5, Landroid/app/admin/IntegerPolicyValue;

    const/4 v10, 0x2

    invoke-direct {v5, v10}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v11, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v11, v8}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v10, Landroid/app/admin/IntegerPolicyValue;

    invoke-direct {v10, v6}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    invoke-static {v5, v11, v10}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v15, v5}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v5, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v10, 0x14

    invoke-direct {v5, v10}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v18, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v18 .. v18}, Ljava/lang/Object;-><init>()V

    const/16 v16, 0x2

    move-object/from16 v17, v5

    invoke-direct/range {v13 .. v18}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    move-object v5, v13

    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v13, "securityLogging"

    invoke-direct {v11, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/4 v15, 0x3

    invoke-direct {v14, v15}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v16, v13

    const/4 v13, 0x1

    move-object/from16 v22, v16

    const/4 v6, 0x2

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->SECURITY_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v11, v10

    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v13, v11

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v14, "auditLogging"

    invoke-direct {v11, v14}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v15, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/4 v6, 0x4

    invoke-direct {v14, v6}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v6, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v16, v13

    const/4 v13, 0x1

    move-object/from16 v23, v6

    move-object/from16 v6, v16

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->AUDIT_LOGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v24, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v13, "lockTask"

    invoke-direct {v11, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v14, Lcom/android/server/devicepolicy/TopPriority;

    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/4 v8, 0x5

    invoke-direct {v15, v8}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v29, Lcom/android/server/devicepolicy/LockTaskPolicySerializer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    const/16 v27, 0x2

    move-object/from16 v25, v11

    move-object/from16 v26, v14

    move-object/from16 v28, v15

    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    move-object/from16 v8, v24

    sput-object v8, Lcom/android/server/devicepolicy/PolicyDefinition;->LOCK_TASK:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v24, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v14, "userControlDisabledPackages"

    invoke-direct {v11, v14}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v26, Lcom/android/server/devicepolicy/PackageSetUnion;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Object;-><init>()V

    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v18, v0

    const/4 v0, 0x6

    invoke-direct {v15, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v29, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    const/16 v27, 0x0

    move-object/from16 v25, v11

    move-object/from16 v28, v15

    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v24, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_CONTROLLED_DISABLED_PACKAGES:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v25, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Landroid/app/admin/IntentFilterPolicyKey;

    const-string/jumbo v11, "persistentPreferredActivity"

    invoke-direct {v0, v11}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v15, Lcom/android/server/devicepolicy/TopPriority;

    move-object/from16 v26, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v31, v1

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v30, Lcom/android/server/devicepolicy/ComponentNamePolicySerializer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    const/16 v28, 0x2

    move-object/from16 v29, v0

    move-object/from16 v27, v15

    invoke-direct/range {v25 .. v30}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v25, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v0, v10

    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v1, v11

    new-instance v11, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v15, "packageUninstallBlocked"

    invoke-direct {v11, v15}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    move-object/from16 v26, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v27, v0

    const/16 v0, 0x8

    invoke-direct {v14, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v28, v13

    const/4 v13, 0x2

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PACKAGE_UNINSTALL_BLOCKED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v33, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v13, "applicationRestrictions"

    invoke-direct {v11, v13}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v35, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v35 .. v35}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v15, 0x9

    invoke-direct {v14, v15}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v38, Lcom/android/server/devicepolicy/BundlePolicySerializer;

    invoke-direct/range {v38 .. v38}, Ljava/lang/Object;-><init>()V

    const/16 v36, 0x2e

    move-object/from16 v34, v11

    move-object/from16 v37, v14

    invoke-direct/range {v33 .. v38}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v33, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v34, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v14, "resetPasswordToken"

    invoke-direct {v11, v14}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v36, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v36 .. v36}, Ljava/lang/Object;-><init>()V

    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v27, v0

    const/16 v0, 0xa

    invoke-direct {v15, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v39, Lcom/android/server/devicepolicy/LongPolicySerializer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    const/16 v37, 0xa

    move-object/from16 v35, v11

    move-object/from16 v38, v15

    invoke-direct/range {v34 .. v39}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    new-instance v35, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v11, "keyguardDisabledFeatures"

    invoke-direct {v0, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v37, Lcom/android/server/devicepolicy/FlagUnion;

    invoke-direct/range {v37 .. v37}, Ljava/lang/Object;-><init>()V

    new-instance v15, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v36, v0

    const/16 v0, 0xb

    invoke-direct {v15, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v40, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v40 .. v40}, Ljava/lang/Object;-><init>()V

    const/16 v38, 0x2

    move-object/from16 v39, v15

    invoke-direct/range {v35 .. v40}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    move-object v0, v10

    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v15, v11

    new-instance v11, Landroid/app/admin/PackagePolicyKey;

    move-object/from16 v29, v3

    const-string/jumbo v3, "applicationHidden"

    invoke-direct {v11, v3}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;)V

    move-object/from16 v30, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v36, v0

    const/16 v0, 0xd

    invoke-direct {v14, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v37, v13

    const/4 v13, 0x6

    move-object/from16 v44, v0

    move-object/from16 v43, v30

    move-object/from16 v41, v33

    move-object/from16 v0, v36

    move-object/from16 v42, v37

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_HIDDEN:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v11, v10

    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v13, v11

    new-instance v11, Landroid/app/admin/AccountTypePolicyKey;

    const-string/jumbo v14, "accountManagementDisabled"

    invoke-direct {v11, v14}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;)V

    move-object v15, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v0, 0xe

    invoke-direct {v14, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v30, v13

    const/4 v13, 0x6

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v45, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v13, "permittedInputMethods"

    invoke-direct {v11, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v47, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v47 .. v47}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v15, 0xf

    invoke-direct {v14, v15}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v50, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct/range {v50 .. v50}, Ljava/lang/Object;-><init>()V

    const/16 v48, 0x6

    move-object/from16 v46, v11

    move-object/from16 v49, v14

    invoke-direct/range {v45 .. v50}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v45, Lcom/android/server/devicepolicy/PolicyDefinition;->PERMITTED_INPUT_METHODS:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v11, v10

    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v14, v11

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v15, "screenCaptureDisabled"

    invoke-direct {v11, v15}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object/from16 v33, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v37, v0

    const/16 v0, 0x10

    invoke-direct {v14, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v38, v13

    const/4 v13, 0x4

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->SCREEN_CAPTURE_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v46, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v13, "personalAppsSuspended"

    invoke-direct {v11, v13}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v48, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v48 .. v48}, Ljava/lang/Object;-><init>()V

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v15, 0x11

    invoke-direct {v14, v15}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v51, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v51 .. v51}, Ljava/lang/Object;-><init>()V

    const/16 v49, 0x6

    move-object/from16 v47, v11

    move-object/from16 v50, v14

    invoke-direct/range {v46 .. v51}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v46, Lcom/android/server/devicepolicy/PolicyDefinition;->PERSONAL_APPS_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v11, v0

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v14, v1

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v15, "usbDataSignaling"

    invoke-direct {v1, v15}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object/from16 v39, v4

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v40, v0

    const/16 v0, 0x12

    invoke-direct {v4, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v5

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v47, v3

    const/4 v3, 0x1

    move-object/from16 v68, v11

    move-object/from16 v58, v14

    move-object/from16 v55, v24

    move-object/from16 v57, v25

    move-object/from16 v56, v26

    move-object/from16 v53, v27

    move-object/from16 v54, v28

    move-object/from16 v52, v29

    move-object/from16 v62, v30

    move-object/from16 v64, v33

    move-object/from16 v60, v34

    move-object/from16 v61, v35

    move-object/from16 v59, v36

    move-object/from16 v65, v37

    move-object/from16 v67, v38

    move-object/from16 v11, v39

    move-object/from16 v66, v45

    move-object/from16 v63, v47

    move-object v14, v0

    move-object/from16 v0, v40

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->USB_DATA_SIGNALING:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v24, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v3, "contentProtection"

    invoke-direct {v1, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v26, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v5, 0x13

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v29, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    const/16 v27, 0x2

    move-object/from16 v25, v1

    move-object/from16 v28, v4

    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v24, Lcom/android/server/devicepolicy/PolicyDefinition;->CONTENT_PROTECTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v25, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v4, "appFunctions"

    invoke-direct {v1, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/android/server/devicepolicy/MostRestrictive;

    move-object/from16 v40, v0

    new-instance v0, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v26, v1

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v1, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v16, v2

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v2, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v21, v3

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    invoke-static {v0, v1, v2}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v30, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v30 .. v30}, Ljava/lang/Object;-><init>()V

    const/16 v28, 0x2

    move-object/from16 v29, v0

    move-object/from16 v27, v5

    invoke-direct/range {v25 .. v30}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v25, Lcom/android/server/devicepolicy/PolicyDefinition;->APP_FUNCTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v33, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v1, "passwordComplexity"

    invoke-direct {v0, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/devicepolicy/MostRestrictive;

    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    const/high16 v5, 0x50000

    invoke-direct {v3, v5}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v5, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v34, v0

    const/high16 v0, 0x30000

    invoke-direct {v5, v0}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v0, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v26, v1

    const/high16 v1, 0x10000

    invoke-direct {v0, v1}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    new-instance v1, Landroid/app/admin/IntegerPolicyValue;

    move-object/from16 v27, v4

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    invoke-static {v3, v5, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/devicepolicy/MostRestrictive;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v38, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v38 .. v38}, Ljava/lang/Object;-><init>()V

    const/16 v36, 0x2

    move-object/from16 v37, v0

    move-object/from16 v35, v2

    invoke-direct/range {v33 .. v38}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v33, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v2, "packagesSuspended"

    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v3, v2

    new-instance v2, Lcom/android/server/devicepolicy/PackageSetUnion;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v5, 0xf

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/server/devicepolicy/PackageSetPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v3

    const/4 v3, 0x0

    move-object/from16 v69, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v34, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v2, "memoryTagging"

    invoke-direct {v1, v2}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/android/server/devicepolicy/TopPriority;

    invoke-static {v11}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v39, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/Object;-><init>()V

    const/16 v37, 0x0

    move-object/from16 v35, v1

    move-object/from16 v36, v3

    move-object/from16 v38, v4

    invoke-direct/range {v34 .. v39}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v34, Lcom/android/server/devicepolicy/PolicyDefinition;->MEMORY_TAGGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v70, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v3, "autoTime"

    invoke-direct {v1, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/devicepolicy/TopPriority;

    invoke-static/range {v19 .. v19}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/devicepolicy/EnforcingAdmin;->getRoleAuthorityOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, v11}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/android/server/devicepolicy/TopPriority;-><init>(Ljava/util/List;)V

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v75, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v75 .. v75}, Ljava/lang/Object;-><init>()V

    const/16 v73, 0x1

    move-object/from16 v74, v0

    move-object/from16 v71, v1

    move-object/from16 v72, v4

    invoke-direct/range {v70 .. v75}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v70, Lcom/android/server/devicepolicy/PolicyDefinition;->AUTO_TIME:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v11, "semSetAllowStorageCard"

    invoke-direct {v1, v11}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v19, v3

    const/4 v3, 0x1

    move-object/from16 v85, v2

    move-object/from16 v2, v16

    move-object/from16 v83, v17

    move-object/from16 v86, v19

    move-object/from16 v78, v21

    move-object/from16 v77, v24

    move-object/from16 v79, v25

    move-object/from16 v82, v26

    move-object/from16 v80, v27

    move-object/from16 v81, v33

    move-object/from16 v84, v34

    move-object/from16 v76, v40

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_STORAGE_CARD:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v1, v0

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v3, v1

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v4, "semSetAllowTextMessaging"

    invoke-direct {v1, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v4, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v5

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v3

    const/4 v3, 0x2

    move-object/from16 v88, v0

    move-object/from16 v0, v16

    move-object/from16 v87, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v16, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_TEXT_MESSAGING:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v3, "semSetAllowPopImapEmail"

    invoke-direct {v1, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v3

    const/4 v3, 0x2

    move-object/from16 v89, v16

    move-object/from16 v90, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_POP_IMAP_EMAIL:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v1, v0

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v3, v1

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v4, "semSetAllowWifi"

    invoke-direct {v1, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v4, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v5

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v3

    const/4 v3, 0x1

    move-object/from16 v92, v0

    move-object/from16 v0, v16

    move-object/from16 v91, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v16, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_WIFI_POLICY:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v3, "semSetAllowBrowser"

    invoke-direct {v1, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v3

    const/4 v3, 0x2

    move-object/from16 v93, v16

    move-object/from16 v94, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_BROWSER:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v1, v0

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v3, v1

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v4, "semSetAllowInternetSharing"

    invoke-direct {v1, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v16, v0

    const/16 v0, 0xe

    invoke-direct {v4, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v5

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v3

    const/4 v3, 0x1

    move-object/from16 v96, v0

    move-object/from16 v0, v16

    move-object/from16 v95, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v16, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_INTERNET_SHARING:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v24, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v1, "semSetAllowBluetoothMode"

    invoke-direct {v0, v1}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v26, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Object;-><init>()V

    new-instance v3, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v29, Lcom/android/server/devicepolicy/IntegerPolicySerializer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    const/16 v27, 0x1

    move-object/from16 v25, v0

    move-object/from16 v28, v3

    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v24, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_BLUETOOTH_MODE:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v3, v1

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v4, "semSetAllowDesktopSync"

    invoke-direct {v1, v4}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    move-object/from16 v17, v0

    const/16 v0, 0xe

    invoke-direct {v4, v0}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v0, v5

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v19, v3

    const/4 v3, 0x1

    move-object/from16 v100, v0

    move-object/from16 v97, v16

    move-object/from16 v0, v17

    move-object/from16 v99, v19

    move-object/from16 v98, v24

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_DESKTOP_SYNC:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v1, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v3, "semSetAllowIrda"

    invoke-direct {v1, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v5, 0xe

    invoke-direct {v4, v5}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v5, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object/from16 v16, v3

    const/4 v3, 0x2

    move-object/from16 v102, v16

    move-object/from16 v101, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v0, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_ALLOW_IRDA:Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v1, v10

    new-instance v10, Lcom/android/server/devicepolicy/PolicyDefinition;

    move-object v2, v11

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v3, "semSetRequireStorageCardEncryption"

    invoke-direct {v11, v3}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    move-object v5, v14

    new-instance v14, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v4, 0xe

    invoke-direct {v14, v4}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    move-object v4, v15

    new-instance v15, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    move-object/from16 v16, v13

    const/4 v13, 0x2

    move-object/from16 v19, v0

    move-object/from16 v103, v2

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    move-object/from16 v2, v18

    move-object/from16 v0, v70

    move-object/from16 v18, v3

    move-object v3, v4

    move-object/from16 v16, v9

    move-object/from16 v9, v46

    move-object v4, v1

    move-object/from16 v1, v31

    invoke-direct/range {v10 .. v15}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sput-object v10, Lcom/android/server/devicepolicy/PolicyDefinition;->SEM_REQUIRE_STORAGE_CARD_ENCRYPTION:Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v24, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v11, Landroid/app/admin/NoArgsPolicyKey;

    const-string/jumbo v12, "semSetChangeNotificationEnabled"

    invoke-direct {v11, v12}, Landroid/app/admin/NoArgsPolicyKey;-><init>(Ljava/lang/String;)V

    new-instance v26, Lcom/android/server/devicepolicy/MostRecent;

    invoke-direct/range {v26 .. v26}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v14, 0xe

    invoke-direct {v13, v14}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v29, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Object;-><init>()V

    const/16 v27, 0x1

    move-object/from16 v25, v11

    move-object/from16 v28, v13

    invoke-direct/range {v24 .. v29}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    move-object/from16 v11, v24

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    sput-object v13, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    sput-object v14, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v52

    invoke-virtual {v13, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v22

    invoke-virtual {v13, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v6, v23

    move-object/from16 v1, v53

    invoke-virtual {v13, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v54

    invoke-virtual {v13, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v55

    move-object/from16 v2, v56

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v57

    move-object/from16 v2, v58

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v32

    move-object/from16 v1, v59

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v2, v43

    move-object/from16 v1, v60

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v15, v44

    move-object/from16 v1, v61

    invoke-virtual {v13, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v62

    move-object/from16 v2, v63

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v64

    move-object/from16 v15, v65

    invoke-virtual {v13, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v66

    move-object/from16 v2, v67

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v68

    invoke-virtual {v13, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v76

    invoke-virtual {v13, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v77

    move-object/from16 v2, v78

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v79

    move-object/from16 v2, v80

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v81

    move-object/from16 v2, v82

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v69

    move-object/from16 v1, v83

    invoke-virtual {v13, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v84

    move-object/from16 v2, v85

    invoke-virtual {v13, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v86

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v87

    move-object/from16 v2, v103

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v88

    move-object/from16 v0, v89

    invoke-virtual {v13, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v90

    move-object/from16 v0, v91

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v92

    move-object/from16 v0, v93

    invoke-virtual {v13, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v94

    move-object/from16 v0, v95

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v96

    move-object/from16 v0, v97

    invoke-virtual {v13, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v98

    move-object/from16 v3, v99

    invoke-virtual {v13, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v5, v100

    move-object/from16 v0, v101

    invoke-virtual {v13, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v19

    move-object/from16 v1, v102

    invoke-virtual {v13, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_modify_accounts"

    move-object/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_wifi"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_change_wifi_state"

    move-object/from16 v2, v16

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_wifi_tethering"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_grant_admin"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_sharing_admin_configured_wifi"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_wifi_direct"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_add_wifi_config"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_locale"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_install_apps"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_uninstall_apps"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_share_location"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_airplane_mode"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_brightness"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_ambient_display"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_screen_timeout"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_install_unknown_sources"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_install_unknown_sources_globally"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_bluetooth"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_bluetooth"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_bluetooth_sharing"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_usb_file_transfer"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_credentials"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_remove_user"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_remove_managed_profile"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_vpn"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_location"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_date_time"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_tethering"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_network_reset"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_factory_reset"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_add_user"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_add_managed_profile"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_add_clone_profile"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_add_private_profile"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ensure_verify_apps"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_cell_broadcasts"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_config_mobile_networks"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_control_apps"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_physical_media"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_unmute_microphone"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_adjust_volume"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_outgoing_calls"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_sms"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_fun"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_create_windows"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_system_error_dialogs"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_cross_profile_copy_paste"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_outgoing_beam"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_wallpaper"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_set_wallpaper"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_safe_boot"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_record_audio"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_run_in_background"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_camera"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "disallow_unmute_device"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_data_roaming"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_set_user_icon"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_oem_unlock"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_unified_password"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "allow_parent_profile_app_linking"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_autofill"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_content_capture"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_content_suggestions"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_user_switch"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_sharing_into_profile"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_printing"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "disallow_config_private_dns"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "disallow_microphone_toggle"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "disallow_camera_toggle"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "disallow_biometric"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "disallow_config_default_apps"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_cellular_2g"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_ultra_wideband_radio"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_near_field_communication_radio"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_sim_globally"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_assist_content"

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "no_thread_network"

    invoke-virtual {v14, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/devicepolicy/PolicyDefinition;->USER_RESTRICTION_FLAGS:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Landroid/app/admin/UserRestrictionPolicyKey;

    invoke-direct {v5, v3, v1}, Landroid/app/admin/UserRestrictionPolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    or-int/lit8 v7, v2, 0x14

    new-instance v4, Lcom/android/server/devicepolicy/PolicyDefinition;

    new-instance v8, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;

    const/16 v1, 0xc

    invoke-direct {v8, v1}, Lcom/android/server/devicepolicy/PolicyDefinition$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v9, Lcom/android/server/devicepolicy/BooleanPolicySerializer;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    sget-object v6, Lcom/android/server/devicepolicy/PolicyDefinition;->TRUE_MORE_RESTRICTIVE:Lcom/android/server/devicepolicy/MostRestrictive;

    invoke-direct/range {v4 .. v9}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    invoke-virtual {v5}, Landroid/app/admin/UserRestrictionPolicyKey;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    iput-object p2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    iput p3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    iput-object p5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PolicyDefinition;->isNonCoexistablePolicy()Z

    move-result p0

    if-eqz p0, :cond_1

    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p1, "Non-coexistable global policies not supported,please add support."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static ACCOUNT_MANAGEMENT_DISABLED(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 2

    const-string/jumbo v0, "accountType must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/app/admin/AccountTypePolicyKey;

    const-string/jumbo v1, "accountManagementDisabled"

    invoke-direct {v0, v1, p0}, Landroid/app/admin/AccountTypePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_ACCOUNT_MANAGEMENT_DISABLED:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static APPLICATION_RESTRICTIONS(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 2

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/app/admin/PackagePolicyKey;

    const-string/jumbo v1, "applicationRestrictions"

    invoke-direct {v0, v1, p0}, Landroid/app/admin/PackagePolicyKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_APPLICATION_RESTRICTIONS:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static PERSISTENT_PREFERRED_ACTIVITY(Landroid/content/IntentFilter;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 2

    const-string/jumbo v0, "intentFilter must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/app/admin/IntentFilterPolicyKey;

    const-string/jumbo v1, "persistentPreferredActivity"

    invoke-direct {v0, v1, p0}, Landroid/app/admin/IntentFilterPolicyKey;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    sget-object p0, Lcom/android/server/devicepolicy/PolicyDefinition;->GENERIC_PERSISTENT_PREFERRED_ACTIVITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    invoke-virtual {p0, v0}, Lcom/android/server/devicepolicy/PolicyDefinition;->createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;

    move-result-object p0

    return-object p0
.end method

.method public static getPolicyDefinitionForUserRestriction(Ljava/lang/String;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 3

    invoke-static {p0}, Landroid/app/admin/DevicePolicyIdentifiers;->getIdentifierForUserRestriction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->POLICY_DEFINITIONS:Ljava/util/Map;

    move-object v2, v1

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/devicepolicy/PolicyDefinition;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported user restriction "

    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final createPolicyDefinition(Landroid/app/admin/PolicyKey;)Lcom/android/server/devicepolicy/PolicyDefinition;
    .locals 6

    new-instance v0, Lcom/android/server/devicepolicy/PolicyDefinition;

    iget-object v4, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyEnforcerCallback:Lcom/android/internal/util/function/QuadFunction;

    iget-object v2, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    iget v3, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    iget-object v5, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicySerializer:Lcom/android/server/devicepolicy/PolicySerializer;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/devicepolicy/PolicyDefinition;-><init>(Landroid/app/admin/PolicyKey;Lcom/android/server/devicepolicy/ResolutionMechanism;ILcom/android/internal/util/function/QuadFunction;Lcom/android/server/devicepolicy/PolicySerializer;)V

    return-object v0
.end method

.method public final isGlobalOnlyPolicy()Z
    .locals 1

    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isNonCoexistablePolicy()Z
    .locals 0

    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PolicyDefinition{ mPolicyKey= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyKey:Landroid/app/admin/PolicyKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mResolutionMechanism= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mResolutionMechanism:Lcom/android/server/devicepolicy/ResolutionMechanism;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicyFlags= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/devicepolicy/PolicyDefinition;->mPolicyFlags:I

    const-string v1, " }"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
