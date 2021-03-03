using Android.App;
using Android.Widget;
using Android.OS;

namespace EaziRoute
{
    [Activity(Label = "EaziRoute", MainLauncher = true, Icon = "@drawable/icon")]
    public class MainActivity : Activity
    {
        
        protected override void OnCreate(Bundle bundle)
        {
            base.OnCreate(bundle);
            Button button = FindViewById<Button>(Resource.Id.btnSignIn);
            // Button.Click += delegate (Button.text = "You click me";);
            // Set our view from the "main" layout resource
            // SetContentView (Resource.Layout.Main);
        }
    }
}

