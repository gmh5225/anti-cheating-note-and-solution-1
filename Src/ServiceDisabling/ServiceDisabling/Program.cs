using System;
using System.Collections.Generic;
using System.Threading;
using System.ServiceProcess;
using System.Windows.Forms;
using System.IO;
using System.Linq;
using System.Diagnostics;

namespace ServiceDisabling
{
    internal class Program
    {
        static void OnKeyDown(Keys keyData)
        {
            if (keyData == Keys.F1)
            {
                const string message = "• Author: Michaël André Franiatte.\n\r\n\r• Contact: michael.franiatte@gmail.com.\n\r\n\r• Publisher: https://github.com/michaelandrefraniatte.\n\r\n\r• Copyrights: All rights reserved, no permissions granted.\n\r\n\r• License: Not open source, not free of charge to use.";
                const string caption = "About";
                MessageBox.Show(message, caption, MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        private static List<string> servWLs = new List<string>();
        private static ProcessStartInfo startInfo;
        static void Main(string[] args)
        {
            using (StreamReader file = new StreamReader("sdservwhitelist.txt"))
            {
                while (true)
                {
                    string procName = file.ReadLine();
                    if (procName == "")
                    {
                        file.Close();
                        break;
                    }
                    else
                    {
                        servWLs.Add(procName);
                    }
                }
            }
            ServiceController[] services = ServiceController.GetServices();
            foreach (ServiceController service in services)
            {
                try
                {
                    string ServiceName = service.ServiceName;
                    string result = servWLs.FirstOrDefault(x => x == ServiceName);
                    if (result == null)
                    {
                        Console.WriteLine(ServiceName);
                        using (StreamWriter createdfile = new StreamWriter("sdservdisabling.cmd"))
                        {
                            createdfile.WriteLine(@"sc config " + ServiceName + " start= disabled");
                            createdfile.WriteLine(@"sc stop " + ServiceName);
                        }
                        startInfo = new ProcessStartInfo("sdservdisabling.cmd");
                        startInfo.WindowStyle = ProcessWindowStyle.Normal;
                        Process.Start(startInfo);
                        Console.WriteLine("");
                    }
                }
                catch { }
                Thread.Sleep(1);
            }
            Console.WriteLine("Ended");
            Console.ReadLine();
        }
    }
}