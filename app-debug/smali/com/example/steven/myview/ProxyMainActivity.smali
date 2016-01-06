.class public Lcom/example/steven/myview/ProxyMainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ProxyMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/steven/myview/ProxyMainActivity$PluginItem;
    }
.end annotation


# static fields
.field public static final EXTRA_CLASS:Ljava/lang/String; = "extra.class"

.field public static final EXTRA_DEX_PATH:Ljava/lang/String; = "extra.dex.path"

.field public static final FROM:Ljava/lang/String; = "extra.from"

.field public static final FROM_EXTERNAL:I = 0x0

.field public static final FROM_INTERNAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ProxyActivity"


# instance fields
.field private mClass:Ljava/lang/String;

.field private mDexPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 62
    return-void
.end method

.method private add(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 72
    add-int v0, p1, p2

    return v0
.end method

.method private launchTargetActivity()V
    .locals 6

    .prologue
    .line 75
    const-string v2, "ProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exists:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/example/steven/myview/ProxyMainActivity;->mDexPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {p0}, Lcom/example/steven/myview/ProxyMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/example/steven/myview/ProxyMainActivity;->mDexPath:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 77
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 78
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 79
    .local v0, "activityName":Ljava/lang/String;
    iput-object v0, p0, Lcom/example/steven/myview/ProxyMainActivity;->mClass:Ljava/lang/String;

    .line 82
    .end local v0    # "activityName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private launchTargetActivity(Ljava/lang/String;)V
    .locals 14
    .param p1, "mClass2"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 84
    const-string v10, "ProxyActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "classname:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v10, "dex"

    invoke-virtual {p0, v10, v13}, Lcom/example/steven/myview/ProxyMainActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 86
    .local v3, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "dexOutputPath":Ljava/lang/String;
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 89
    .local v7, "localClassLoader":Ljava/lang/ClassLoader;
    new-instance v2, Ldalvik/system/DexClassLoader;

    iget-object v10, p0, Lcom/example/steven/myview/ProxyMainActivity;->mDexPath:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v2, v10, v4, v11, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 92
    .local v2, "dex":Ldalvik/system/DexClassLoader;
    :try_start_0
    invoke-virtual {v2, p1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 93
    .local v8, "localclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 94
    .local v1, "c":Ljava/lang/reflect/Constructor;
    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v1, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 99
    .local v6, "instance":Ljava/lang/Object;
    const-string v10, "onCreate"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/os/Bundle;

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 100
    .local v9, "onCreate":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 102
    .local v0, "b":Landroid/os/Bundle;
    const-string v10, "extra.from"

    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 104
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    invoke-virtual {v9, v6, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "c":Ljava/lang/reflect/Constructor;
    .end local v6    # "instance":Ljava/lang/Object;
    .end local v8    # "localclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "onCreate":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v5

    .line 107
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v5, 0x7f04001d

    invoke-virtual {p0, v5}, Lcom/example/steven/myview/ProxyMainActivity;->setContentView(I)V

    .line 36
    const v5, 0x7f0c006f

    invoke-virtual {p0, v5}, Lcom/example/steven/myview/ProxyMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 37
    .local v4, "text":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/example/steven/myview/ProxyMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra.dex.path"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/steven/myview/ProxyMainActivity;->mDexPath:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/example/steven/myview/ProxyMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "extra.class"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/example/steven/myview/ProxyMainActivity;->mClass:Ljava/lang/String;

    .line 40
    const v5, 0x7f060015

    invoke-virtual {p0, v5}, Lcom/example/steven/myview/ProxyMainActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const-string v5, "ProxyActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/example/steven/myview/ProxyMainActivity;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mDexPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/example/steven/myview/ProxyMainActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v5

    iget-object v6, p0, Lcom/example/steven/myview/ProxyMainActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadApk(Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 49
    invoke-virtual {p0}, Lcom/example/steven/myview/ProxyMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/example/steven/myview/ProxyMainActivity;->mDexPath:Ljava/lang/String;

    invoke-virtual {v5, v6, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 50
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 51
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v5, v5, v8

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 52
    .local v0, "activityName":Ljava/lang/String;
    iput-object v0, p0, Lcom/example/steven/myview/ProxyMainActivity;->mClass:Ljava/lang/String;

    .line 54
    .end local v0    # "activityName":Ljava/lang/String;
    :cond_0
    const-string v5, "ProxyActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/example/steven/myview/ProxyMainActivity;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",info.packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",mClass:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/example/steven/myview/ProxyMainActivity;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v2, Lcom/example/steven/myview/ProxyMainActivity$PluginItem;

    invoke-direct {v2}, Lcom/example/steven/myview/ProxyMainActivity$PluginItem;-><init>()V

    .line 56
    .local v2, "item":Lcom/example/steven/myview/ProxyMainActivity$PluginItem;
    invoke-static {p0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v3

    .line 57
    .local v3, "pluginManager":Lcom/ryg/dynamicload/internal/DLPluginManager;
    new-instance v5, Lcom/ryg/dynamicload/internal/DLIntent;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/example/steven/myview/ProxyMainActivity;->mClass:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/ryg/dynamicload/internal/DLIntent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, p0, v5}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginActivity(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {p0, v9, v6}, Lcom/example/steven/myview/ProxyMainActivity;->add(II)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 61
    return-void
.end method
