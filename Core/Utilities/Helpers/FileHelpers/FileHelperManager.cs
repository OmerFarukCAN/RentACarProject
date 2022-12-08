using Core.Utilities.Helpers.GuidHelpers;
using Microsoft.AspNetCore.Http;

namespace Core.Utilities.Helpers.FileHelpers
{
    public class FileHelperManager : IFileHelper
    {
        public string? Upload(IFormFile file, string root)
        {
            if (file.Length <= 0) return null;
            if (!Directory.Exists(root))
            {
                Directory.CreateDirectory(root);
            }
            var extension = Path.GetExtension(file.FileName);
            var guid = GuidHelper.CreateGuid();
            var filePath = guid + extension;

            using var fileStream = File.Create(root + filePath);
            file.CopyTo(fileStream);
            fileStream.Flush();
            return filePath;
        }

        public string? Update(IFormFile file, string filePath, string root)
        {
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
            return Upload(file, root);
        }

        public void Delete(string filePath)
        {
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
        }       
    }
}
