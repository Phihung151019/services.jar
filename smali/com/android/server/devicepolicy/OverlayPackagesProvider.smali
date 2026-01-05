.class public Lcom/android/server/devicepolicy/OverlayPackagesProvider;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sActionToMetadataKeyMap:Ljava/util/Map;

.field public static final sAllowedActions:Ljava/util/Set;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

.field public final mPm:Landroid/content/pm/PackageManager;

.field public final salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    const-string/jumbo v1, "android.app.REQUIRED_APP_MANAGED_USER"

    const-string/jumbo v2, "android.app.action.PROVISION_MANAGED_USER"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.app.REQUIRED_APP_MANAGED_PROFILE"

    const-string/jumbo v3, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "android.app.REQUIRED_APP_MANAGED_DEVICE"

    const-string/jumbo v4, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;Lcom/android/server/devicepolicy/RecursiveStringArrayResourceResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string/jumbo p2, "SalesCode"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getNonRequiredApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .locals 29

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const-string/jumbo v4, "android.app.action.PROVISION_MANAGED_PROFILE"

    const-string/jumbo v5, "android.app.action.PROVISION_MANAGED_USER"

    const-string/jumbo v9, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v10, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sAllowedActions:Ljava/util/Set;

    check-cast v10, Ljava/util/HashSet;

    invoke-virtual {v10, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-static {v10}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const v12, 0xc2200

    invoke-virtual {v11, v10, v12, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v13, "Provisioning type "

    const-string v14, " not supported."

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_0

    :goto_1
    const/4 v15, -0x1

    goto :goto_2

    :sswitch_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    goto :goto_1

    :cond_1
    const/4 v15, 0x2

    goto :goto_2

    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    goto :goto_1

    :cond_2
    const/4 v15, 0x1

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_3

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    :goto_2
    packed-switch v15, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const v15, 0x1070204

    goto :goto_3

    :pswitch_1
    const v15, 0x1070205

    goto :goto_3

    :pswitch_2
    const v15, 0x1070203

    :goto_3
    invoke-virtual {v0, v15}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v15

    sparse-switch v15, :sswitch_data_1

    :goto_4
    const/4 v15, -0x1

    goto :goto_5

    :sswitch_3
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    goto :goto_4

    :cond_4
    const/4 v15, 0x2

    goto :goto_5

    :sswitch_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_5

    goto :goto_4

    :cond_5
    const/4 v15, 0x1

    goto :goto_5

    :sswitch_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    goto :goto_4

    :cond_6
    const/4 v15, 0x0

    :goto_5
    packed-switch v15, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    const v15, 0x1070218

    goto :goto_6

    :pswitch_4
    const v15, 0x1070219

    goto :goto_6

    :pswitch_5
    const v15, 0x1070217

    :goto_6
    invoke-virtual {v0, v15}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v15

    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    iget-object v15, v0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    const-string v3, "ATT"

    const-string v6, "AIO"

    const-string/jumbo v8, "SPR"

    const-string/jumbo v7, "XAS"

    const-string v1, "BST"

    move-object/from16 v17, v11

    const-string/jumbo v11, "VMU"

    move-object/from16 p1, v10

    const-string/jumbo v10, "TMB"

    move-object/from16 v18, v12

    const-string/jumbo v12, "VZW"

    const-string/jumbo v0, "VPP"

    move-object/from16 v19, v0

    const-string/jumbo v0, "USC"

    move-object/from16 v20, v0

    const-string v0, "DCM"

    move-object/from16 v21, v0

    const-string/jumbo v0, "SBM"

    move-object/from16 v22, v0

    const-string v0, "KDI"

    move-object/from16 v23, v0

    const-string v0, "CCT"

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v24

    sparse-switch v24, :sswitch_data_2

    :goto_7
    const/16 v24, -0x1

    goto :goto_8

    :sswitch_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_7

    goto :goto_7

    :cond_7
    const/16 v24, 0x2

    goto :goto_8

    :sswitch_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_8

    goto :goto_7

    :cond_8
    const/16 v24, 0x1

    goto :goto_8

    :sswitch_8
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_9

    goto :goto_7

    :cond_9
    const/16 v24, 0x0

    :goto_8
    packed-switch v24, :pswitch_data_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v13, v2, v14}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    :cond_a
    move-object/from16 v25, v5

    move-object/from16 v24, v13

    move-object/from16 v13, v19

    move-object/from16 v5, v21

    move-object/from16 v2, v23

    move-object/from16 v21, v4

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    move-object/from16 v4, v22

    goto/16 :goto_e

    :cond_b
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_c

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    :cond_c
    move-object/from16 v25, v5

    move-object/from16 v24, v13

    move-object/from16 v13, v19

    move-object/from16 v5, v21

    move-object/from16 v2, v23

    move-object/from16 v21, v4

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    move-object/from16 v4, v22

    goto/16 :goto_d

    :cond_d
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    const v24, 0x1070039

    move/from16 v2, v24

    move-object/from16 v24, v13

    move-object/from16 v13, v19

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    move/from16 v20, v2

    :goto_9
    move-object/from16 v25, v5

    move-object/from16 v5, v21

    move-object/from16 v2, v23

    move-object/from16 v21, v4

    move-object/from16 v4, v22

    goto/16 :goto_f

    :cond_e
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_15

    move-object/from16 v24, v13

    move-object/from16 v13, v19

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v25, v5

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    move-object/from16 v5, v21

    move-object/from16 v2, v23

    move-object/from16 v21, v4

    :goto_a
    move-object/from16 v4, v22

    goto/16 :goto_c

    :cond_f
    move-object/from16 v19, v14

    move-object/from16 v14, v20

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const v20, 0x107003a

    goto :goto_9

    :cond_10
    move-object/from16 v25, v5

    move-object/from16 v5, v21

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    const v20, 0x1070034

    move-object/from16 v21, v4

    move-object/from16 v4, v22

    :goto_b
    move-object/from16 v2, v23

    goto :goto_f

    :cond_11
    move-object/from16 v21, v4

    move-object/from16 v4, v22

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const v20, 0x1070037

    goto :goto_b

    :cond_12
    move-object/from16 v2, v23

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_13

    const v20, 0x1070036

    goto :goto_f

    :cond_13
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_14

    const v20, 0x1070033

    goto :goto_f

    :cond_14
    const v20, 0x1070035

    goto :goto_f

    :cond_15
    move-object/from16 v24, v13

    move-object/from16 v13, v19

    move-object/from16 v25, v5

    move-object/from16 v5, v21

    move-object/from16 v2, v23

    move-object/from16 v21, v4

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    goto :goto_a

    :goto_c
    const v20, 0x107003b

    goto :goto_f

    :goto_d
    const v20, 0x1070038

    goto :goto_f

    :goto_e
    const v20, 0x1070032

    :goto_f
    move/from16 v22, v20

    move-object/from16 v20, v10

    move/from16 v10, v22

    :goto_10
    move-object/from16 v22, v0

    goto/16 :goto_15

    :pswitch_7
    move-object/from16 v25, v5

    move-object/from16 v24, v13

    move-object/from16 v13, v19

    move-object/from16 v5, v21

    move-object/from16 v2, v23

    move-object/from16 v21, v4

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    move-object/from16 v4, v22

    const v20, 0x107003c

    goto :goto_f

    :pswitch_8
    move-object/from16 v25, v5

    move-object/from16 v24, v13

    move-object/from16 v13, v19

    move-object/from16 v5, v21

    move-object/from16 v2, v23

    move-object/from16 v21, v4

    move-object/from16 v19, v14

    move-object/from16 v14, v20

    move-object/from16 v4, v22

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_16

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    :cond_16
    move-object/from16 v20, v10

    goto/16 :goto_14

    :cond_17
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_18

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    :cond_18
    move-object/from16 v20, v10

    goto/16 :goto_13

    :cond_19
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_22

    move-object/from16 v20, v10

    const-string/jumbo v10, "TMK"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    goto :goto_12

    :cond_1a
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    goto :goto_11

    :cond_1b
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1c

    const v10, 0x1070030

    goto :goto_10

    :cond_1c
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    const v10, 0x107002a

    goto/16 :goto_10

    :cond_1d
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    const v10, 0x107002d

    goto/16 :goto_10

    :cond_1e
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    const v10, 0x107002c

    goto/16 :goto_10

    :cond_1f
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    const v10, 0x1070029

    goto/16 :goto_10

    :cond_20
    const v10, 0x107002b

    goto/16 :goto_10

    :cond_21
    :goto_11
    const v10, 0x1070031

    goto/16 :goto_10

    :cond_22
    move-object/from16 v20, v10

    :goto_12
    const v10, 0x107002f

    goto/16 :goto_10

    :goto_13
    const v10, 0x107002e

    goto/16 :goto_10

    :goto_14
    const v10, 0x1070028

    goto/16 :goto_10

    :goto_15
    new-instance v0, Landroid/util/ArraySet;

    move-object/from16 v23, v2

    move-object/from16 v26, v4

    move-object/from16 v2, p0

    iget-object v4, v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v4, v18

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    iget-object v4, v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mInjector:Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;

    move/from16 v10, p2

    invoke-interface {v4, v10}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v10

    move-object/from16 p1, v10

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_16
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_24

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodInfo;

    move-object/from16 p1, v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {v18 .. v18}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_23
    move-object/from16 v4, p1

    goto :goto_16

    :cond_24
    move-object/from16 p1, v4

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_27

    const-string/jumbo v17, "persist.ril.config.defaultmsgapp"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_26

    move-object/from16 v18, v5

    const-string/jumbo v5, "defaultmsgapp empty"

    move-object/from16 v27, v14

    const-string/jumbo v14, "OverlayPackagesProvider"

    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/internal/telephony/SmsApplication;->setDefaultMessageAppConfig(Landroid/content/Context;)V

    iget-object v5, v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    move-object/from16 v28, v13

    const/4 v13, 0x1

    invoke-static {v5, v13}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_25

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v13, "getDefaultSmsApplication = "

    invoke-static {v13, v5, v14}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    :cond_25
    const-string/jumbo v5, "getDefaultSmsApplication returned null"

    invoke-static {v14, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_26
    move-object/from16 v18, v5

    move-object/from16 v28, v13

    move-object/from16 v27, v14

    :goto_17
    move-object/from16 v5, v17

    :goto_18
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_27
    move-object/from16 v18, v5

    move-object/from16 v28, v13

    move-object/from16 v27, v14

    :goto_19
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_3

    move-object/from16 v5, v21

    :goto_1a
    move-object/from16 v13, v25

    :goto_1b
    const/4 v14, -0x1

    goto :goto_1d

    :sswitch_9
    move-object/from16 v5, v21

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_28

    goto :goto_1a

    :cond_28
    move-object/from16 v13, v25

    const/4 v14, 0x2

    goto :goto_1d

    :sswitch_a
    move-object/from16 v5, v21

    move-object/from16 v13, v25

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_29

    goto :goto_1c

    :cond_29
    const/4 v14, 0x1

    goto :goto_1d

    :sswitch_b
    move-object/from16 v5, v21

    move-object/from16 v13, v25

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2a

    :goto_1c
    goto :goto_1b

    :cond_2a
    const/4 v14, 0x0

    :goto_1d
    packed-switch v14, :pswitch_data_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    move-object/from16 v1, v19

    move-object/from16 v14, v24

    invoke-static {v14, v10, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    move-object/from16 v17, v0

    move-object/from16 v0, v19

    move-object/from16 v14, v24

    const v19, 0x10701ef

    :goto_1e
    move-object/from16 v21, v12

    move/from16 v12, v19

    goto :goto_1f

    :pswitch_a
    move-object/from16 v17, v0

    move-object/from16 v0, v19

    move-object/from16 v14, v24

    const v19, 0x10701f0

    goto :goto_1e

    :pswitch_b
    move-object/from16 v17, v0

    move-object/from16 v0, v19

    move-object/from16 v14, v24

    const v19, 0x10701ee

    goto :goto_1e

    :goto_1f
    invoke-virtual {v2, v12}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_4

    :goto_20
    const/4 v12, -0x1

    goto :goto_21

    :sswitch_c
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2b

    goto :goto_20

    :cond_2b
    const/4 v12, 0x2

    goto :goto_21

    :sswitch_d
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2c

    goto :goto_20

    :cond_2c
    const/4 v12, 0x1

    goto :goto_21

    :sswitch_e
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2d

    goto :goto_20

    :cond_2d
    const/4 v12, 0x0

    :goto_21
    packed-switch v12, :pswitch_data_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v14, v10, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_c
    const v12, 0x1070214

    goto :goto_22

    :pswitch_d
    const v12, 0x1070215

    goto :goto_22

    :pswitch_e
    const v12, 0x1070213

    :goto_22
    invoke-virtual {v2, v12}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->resolveStringArray(I)Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_5

    :goto_23
    const/16 v16, -0x1

    goto :goto_24

    :sswitch_f
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e

    goto :goto_23

    :cond_2e
    const/16 v16, 0x2

    goto :goto_24

    :sswitch_10
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    goto :goto_23

    :cond_2f
    const/16 v16, 0x1

    goto :goto_24

    :sswitch_11
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    goto :goto_23

    :cond_30
    const/16 v16, 0x0

    :goto_24
    packed-switch v16, :pswitch_data_5

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v14, v10, v0}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_f
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto/16 :goto_27

    :cond_31
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    goto/16 :goto_26

    :cond_32
    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const v0, 0x1070023

    goto :goto_28

    :cond_33
    move-object/from16 v5, v21

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    move-object/from16 v13, v28

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_25

    :cond_34
    move-object/from16 v14, v27

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    const v0, 0x1070024

    goto :goto_28

    :cond_35
    move-object/from16 v9, v18

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    const v0, 0x107001e

    goto :goto_28

    :cond_36
    move-object/from16 v12, v26

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    const v0, 0x1070021

    goto :goto_28

    :cond_37
    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    const v0, 0x1070020

    goto :goto_28

    :cond_38
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    const v0, 0x107001d

    goto :goto_28

    :cond_39
    const v0, 0x107001f

    goto :goto_28

    :cond_3a
    :goto_25
    const v0, 0x1070025

    goto :goto_28

    :cond_3b
    :goto_26
    const v0, 0x1070022

    goto :goto_28

    :cond_3c
    :goto_27
    const v0, 0x107001c

    :goto_28
    move-object/from16 p2, v4

    goto/16 :goto_2c

    :pswitch_10
    const v0, 0x1070026

    goto :goto_28

    :pswitch_11
    move-object/from16 p2, v4

    move-object/from16 v9, v18

    move-object/from16 v0, v20

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v10, v23

    move-object/from16 v12, v26

    move-object/from16 v14, v27

    move-object/from16 v13, v28

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    invoke-virtual {v6, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    goto/16 :goto_2b

    :cond_3d
    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    goto :goto_2a

    :cond_3e
    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const v0, 0x1070019

    goto :goto_2c

    :cond_3f
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_29

    :cond_40
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    const v0, 0x107001a

    goto :goto_2c

    :cond_41
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const v0, 0x1070014

    goto :goto_2c

    :cond_42
    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    const v0, 0x1070017

    goto :goto_2c

    :cond_43
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const v0, 0x1070016

    goto :goto_2c

    :cond_44
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const v0, 0x1070013

    goto :goto_2c

    :cond_45
    const v0, 0x1070015

    goto :goto_2c

    :cond_46
    :goto_29
    const v0, 0x107001b

    goto :goto_2c

    :cond_47
    :goto_2a
    const v0, 0x1070018

    goto :goto_2c

    :cond_48
    :goto_2b
    const v0, 0x1070012

    :goto_2c
    new-instance v1, Landroid/util/ArraySet;

    iget-object v3, v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_0
    iget-object v5, v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v5, p1

    goto :goto_30

    :catch_0
    :goto_2e
    move-object/from16 v5, p1

    goto :goto_2f

    :catch_1
    const/4 v6, 0x0

    goto :goto_2e

    :goto_2f
    invoke-interface {v5, v4}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getActiveApexPackageNameContainingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4c

    :goto_30
    :try_start_2
    iget-object v7, v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_49

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v8, :cond_4a

    :catch_2
    :cond_49
    move-object/from16 v10, p3

    goto :goto_31

    :cond_4a
    sget-object v8, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->sActionToMetadataKeyMap:Ljava/util/Map;

    check-cast v8, Ljava/util/HashMap;

    move-object/from16 v10, p3

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    goto :goto_32

    :goto_31
    move v7, v6

    :goto_32
    if-nez v7, :cond_4b

    :goto_33
    move-object/from16 p1, v5

    goto :goto_2d

    :cond_4b
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_33

    :cond_4c
    move-object/from16 v10, p3

    goto :goto_33

    :cond_4d
    move-object/from16 v5, p1

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v2, v2, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-interface {v5, v2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider$Injector;->getDevicePolicyManagementRoleHolderPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4e
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x36de2734 -> :sswitch_2
        -0x1ea9303f -> :sswitch_1
        -0x1450e22d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x36de2734 -> :sswitch_5
        -0x1ea9303f -> :sswitch_4
        -0x1450e22d -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x36de2734 -> :sswitch_8
        -0x1ea9303f -> :sswitch_7
        -0x1450e22d -> :sswitch_6
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x36de2734 -> :sswitch_b
        -0x1ea9303f -> :sswitch_a
        -0x1450e22d -> :sswitch_9
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x36de2734 -> :sswitch_e
        -0x1ea9303f -> :sswitch_d
        -0x1450e22d -> :sswitch_c
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x36de2734 -> :sswitch_11
        -0x1ea9303f -> :sswitch_10
        -0x1450e22d -> :sswitch_f
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method public final resolveStringArray(I)Ljava/util/Set;
    .locals 1

    new-instance v0, Landroid/util/ArraySet;

    iget-object p0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
