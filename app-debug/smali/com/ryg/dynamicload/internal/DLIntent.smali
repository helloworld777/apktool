.class public Lcom/ryg/dynamicload/internal/DLIntent;
.super Landroid/content/Intent;
.source "DLIntent.java"


# instance fields
.field private mPluginClass:Ljava/lang/String;

.field private mPluginPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginPackage"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginPackage:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "pluginPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginPackage:Ljava/lang/String;

    .line 53
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginClass:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginPackage"    # Ljava/lang/String;
    .param p2, "pluginClass"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginPackage:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginClass:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private setupExtraClassLoader(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 90
    .local v0, "pluginLoader":Ljava/lang/ClassLoader;
    sput-object v0, Lcom/ryg/utils/DLConfigs;->sPluginClassloader:Ljava/lang/ClassLoader;

    .line 91
    invoke-virtual {p0, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 92
    return-void
.end method


# virtual methods
.method public getPluginClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginClass:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginPackage:Ljava/lang/String;

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Parcelable;

    .prologue
    .line 78
    invoke-direct {p0, p2}, Lcom/ryg/dynamicload/internal/DLIntent;->setupExtraClassLoader(Ljava/lang/Object;)V

    .line 79
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 84
    invoke-direct {p0, p2}, Lcom/ryg/dynamicload/internal/DLIntent;->setupExtraClassLoader(Ljava/lang/Object;)V

    .line 85
    invoke-super {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setPluginClass(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginClass:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPluginClass(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginClass"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginClass:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setPluginPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginPackage"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLIntent;->mPluginPackage:Ljava/lang/String;

    .line 62
    return-void
.end method
