﻿#pragma checksum "..\..\..\StationDisplay.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "81C2269EBB6C72DFF5509AA1405A5C4E706F9AF0"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using PL;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace PL {
    
    
    /// <summary>
    /// StationDisplay
    /// </summary>
    public partial class StationDisplay : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 30 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox StationName;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox ChargingStations;
        
        #line default
        #line hidden
        
        
        #line 35 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock StationView;
        
        #line default
        #line hidden
        
        
        #line 36 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button UpdateButton;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock UpdateStationTitle;
        
        #line default
        #line hidden
        
        
        #line 41 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Longitude;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox Latitude;
        
        #line default
        #line hidden
        
        
        #line 45 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock LongitudeText;
        
        #line default
        #line hidden
        
        
        #line 46 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock LatitudeText;
        
        #line default
        #line hidden
        
        
        #line 47 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button AddStationButton;
        
        #line default
        #line hidden
        
        
        #line 49 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock AddBaseStationTitle;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock LongitudeRestrictions;
        
        #line default
        #line hidden
        
        
        #line 51 "..\..\..\StationDisplay.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock LatitudeRestrictions;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "5.0.10.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/PL;component/stationdisplay.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\StationDisplay.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "5.0.10.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 24 "..\..\..\StationDisplay.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Close_Button_Click);
            
            #line default
            #line hidden
            return;
            case 2:
            this.StationName = ((System.Windows.Controls.TextBox)(target));
            
            #line 30 "..\..\..\StationDisplay.xaml"
            this.StationName.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.StationName_TextChanged);
            
            #line default
            #line hidden
            return;
            case 3:
            this.ChargingStations = ((System.Windows.Controls.TextBox)(target));
            
            #line 31 "..\..\..\StationDisplay.xaml"
            this.ChargingStations.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.StationChargeSlots_TextChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.StationView = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 5:
            this.UpdateButton = ((System.Windows.Controls.Button)(target));
            
            #line 36 "..\..\..\StationDisplay.xaml"
            this.UpdateButton.Click += new System.Windows.RoutedEventHandler(this.UpdateButton_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.UpdateStationTitle = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 7:
            this.Longitude = ((System.Windows.Controls.TextBox)(target));
            
            #line 41 "..\..\..\StationDisplay.xaml"
            this.Longitude.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.Longitude_Changed);
            
            #line default
            #line hidden
            
            #line 42 "..\..\..\StationDisplay.xaml"
            this.Longitude.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.OnPreviewTextInput);
            
            #line default
            #line hidden
            return;
            case 8:
            this.Latitude = ((System.Windows.Controls.TextBox)(target));
            
            #line 43 "..\..\..\StationDisplay.xaml"
            this.Latitude.TextChanged += new System.Windows.Controls.TextChangedEventHandler(this.Latitude_Changed);
            
            #line default
            #line hidden
            
            #line 44 "..\..\..\StationDisplay.xaml"
            this.Latitude.PreviewTextInput += new System.Windows.Input.TextCompositionEventHandler(this.OnPreviewTextInput);
            
            #line default
            #line hidden
            return;
            case 9:
            this.LongitudeText = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 10:
            this.LatitudeText = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 11:
            this.AddStationButton = ((System.Windows.Controls.Button)(target));
            
            #line 48 "..\..\..\StationDisplay.xaml"
            this.AddStationButton.Click += new System.Windows.RoutedEventHandler(this.Add_Station_Click);
            
            #line default
            #line hidden
            return;
            case 12:
            this.AddBaseStationTitle = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 13:
            this.LongitudeRestrictions = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 14:
            this.LatitudeRestrictions = ((System.Windows.Controls.TextBlock)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

