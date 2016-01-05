.class public Lcom/ryg/dynamicload/DLProxyActivity;
.super Landroid/app/Activity;
.source "DLProxyActivity.java"

# interfaces
.implements Lcom/ryg/dynamicload/internal/DLAttachable;


# instance fields
.field private impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

.field protected mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    new-instance v0, Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-direct {v0, p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    .line 38
    return-void
.end method


# virtual methods
.method public attach(Lcom/ryg/dynamicload/DLPlugin;Lcom/ryg/dynamicload/internal/DLPluginManager;)V
    .locals 0
    .parameter "remoteActivity"
    .parameter "pluginManager"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    .line 52
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {v0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1, p2, p3}, Lcom/ryg/dynamicload/DLPlugin;->onActivityResult(IILandroid/content/Intent;)V

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 78
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onBackPressed()V

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 138
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->impl:Lcom/ryg/dynamicload/internal/DLProxyImpl;

    invoke-virtual {p0}, Lcom/ryg/dynamicload/DLProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->onCreate(Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onDestroy()V

    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 148
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 149
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1, p2}, Lcom/ryg/dynamicload/DLPlugin;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onNewIntent(Landroid/content/Intent;)V

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 132
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onPause()V

    .line 101
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 102
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onRestart()V

    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 90
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onResume()V

    .line 95
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 96
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onStart()V

    .line 83
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 84
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0}, Lcom/ryg/dynamicload/DLPlugin;->onStop()V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 108
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 143
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 156
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ryg/dynamicload/DLProxyActivity;->mRemoteActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v0, p1}, Lcom/ryg/dynamicload/DLPlugin;->onWindowFocusChanged(Z)V

    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 162
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .parameter "service"

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
